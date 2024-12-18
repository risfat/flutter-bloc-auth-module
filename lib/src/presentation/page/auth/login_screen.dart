import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/colors.dart';
import '../../../common/enums.dart';
import '../../../common/images.dart';
import '../../../common/routes.dart';
import '../../bloc/sign_in_form/sign_in_form_bloc.dart';
import '../../widget/account_not_found_dialog.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Reset the state when the screen is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<SignInFormBloc>()
          .add(const SignInFormEvent.resetStateError());
    });
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        if (state.state == RequestState.error) {
          if (state.message.contains('User not found')) {
            showDialog(
              context: context,
              builder: (context) => const AccountNotFoundDialog(),
            );
          } else {
            // Show a regular snackbar for other errors
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        }
        if (state.state == RequestState.loaded &&
            state.message.contains('Sign in successful')) {
          context.replaceNamed(AppRoutes.DASHBOARD_ROUTE_NAME);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: _LoginForm(state: state),
            ),
          ),
        );
      },
    );
  }
}

class _LoginForm extends StatefulWidget {
  final SignInFormState state;

  const _LoginForm({super.key, required this.state});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _showPasswordField = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeInOut,
    ));

    // Initialize the controller to its end value
    _slideController.value = 1.0;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          _buildBackButton(),
          _buildImage(),
          const SizedBox(height: 20),
          _buildTitle(),
          _buildSubtitle(),
          const SizedBox(height: 20),
          _buildInputField(),
          const SizedBox(height: 20),
          _buildContinueButton(),
          const SizedBox(height: 20),
          _buildAlternativeLoginOptions(),
        ],
      ),
    );
  }

  Widget _buildBackButton() {
    return IconButton(
      onPressed: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          context.replaceNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
        }
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }

  Widget _buildImage() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
      child: Image.asset(
        !_showPasswordField ? Images.LOGIN_ILLUSTRATION : Images.PASSWORD_RESET,
        key: ValueKey<bool>(_showPasswordField),
        height: 300,
      ),
    );
  }

  Widget _buildTitle() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, -0.1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
      },
      child: Text(
        !_showPasswordField ? "Log in to your account" : "Enter your password",
        key: ValueKey<bool>(_showPasswordField),
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSubtitle() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 0.1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
      },
      child: Text(
        !_showPasswordField
            ? "Welcome back to Click To Food"
            : "Let's log in into your Click To Food account",
        key: ValueKey<bool>(_showPasswordField),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _buildInputField() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: _slideAnimation,
            child: child,
          ),
        );
      },
      child: _showPasswordField ? _buildPasswordField() : _buildEmailField(),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      key: const ValueKey('email'),
      controller: _emailController,
      decoration: InputDecoration(
        hintText: "Enter your email",
        prefixIcon: const Icon(Icons.email_outlined),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        errorText: widget.state.emailError,
      ),
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.emailOnChanged(value)),
      validator: (value) =>
          value?.isEmpty ?? true ? 'Please enter your email' : null,
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      key: const ValueKey('password'),
      controller: _passwordController,
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        hintText: "Enter your password",
        prefixIcon: const Icon(Icons.lock_outline),
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () =>
              setState(() => _isPasswordVisible = !_isPasswordVisible),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        errorText: widget.state.passwordError,
      ),
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordOnChanged(value)),
      validator: (value) =>
          value?.isEmpty ?? true ? 'Please enter your password' : null,
    );
  }

  Widget _buildContinueButton() {
    return AnimatedBuilder(
      animation: _slideController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, 20 * (1 - _slideController.value)),
          child: Opacity(
            opacity: _slideController.value,
            child: child,
          ),
        );
      },
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorLight.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: widget.state.state == RequestState.loading
              ? null
              : _onContinuePressed,
          child: widget.state.state == RequestState.loading
              ? const CircularProgressIndicator(color: Colors.white)
              : Text(
                  _showPasswordField ? "Log In" : "Continue",
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
        ),
      ),
    );
  }

  void _onContinuePressed() {
    if (_formKey.currentState!.validate()) {
      if (!_showPasswordField) {
        setState(() {
          _showPasswordField = true;
        });
        _slideController.forward(from: 0.0);
      } else {
        context
            .read<SignInFormBloc>()
            .add(const SignInFormEvent.signInWithEmail());
      }
    }
  }

  Widget _buildAlternativeLoginOptions() {
    return AnimatedBuilder(
      animation: _slideController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, 40 * (1 - _slideController.value)),
          child: Opacity(
            opacity: _slideController.value,
            child: child,
          ),
        );
      },
      child: Column(
        children: [
          const Text(
            "Or log in with",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialLoginButton(
                Images.GOOGLE_ICON,
                () => context
                    .read<SignInFormBloc>()
                    .add(const SignInFormEvent.signInWithGoogle()),
              ),
              const SizedBox(width: 20),
              _buildSocialLoginButton(
                Images.APPLE_ICON,
                () => context
                    .read<SignInFormBloc>()
                    .add(const SignInFormEvent.signInWithApple()),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLoginButton(String assetPath, VoidCallback onPressed) {
    return IconButton(
      onPressed: null,
      icon: Image.asset(
        assetPath,
        height: 30,
        width: 30,
      ),
    );
  }
}
