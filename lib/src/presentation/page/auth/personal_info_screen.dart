import 'package:bloc_clean_architecture/src/common/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../../../common/colors.dart';
import '../../../common/enums.dart';
import '../../bloc/sign_in_form/sign_in_form_bloc.dart';
import '../../widget/custom_text_form_field.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        // setState(() {
        //   _emailController.text = state.email;
        // });

        if (state.state == RequestState.loaded &&
            state.isSignupCompleted &&
            state.isOtpVerified) {
          // Navigator.pushReplacementNamed(
          //     context, AppRoutes.DASHBOARD_ROUTE_NAME);
          context.replaceNamed(AppRoutes.DASHBOARD_ROUTE_NAME);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "Personal information",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Please provide us your information to continue",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 20),
                    _buildNameField(),
                    const SizedBox(height: 2),
                    _buildEmailField(state),
                    const SizedBox(height: 10),
                    _buildPhoneField(),
                    const SizedBox(height: 2),
                    _buildPasswordField(),
                    const SizedBox(height: 2),
                    _buildConfirmPasswordField(),
                    const SizedBox(height: 20),
                    if (state.state == RequestState.error) ...[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            state.message ?? "An error occurred",
                            style: const TextStyle(color: Colors.red),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                    _buildSubmitButton(state),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildNameField() {
    return CustomTextFormField(
      controller: _nameController,
      labelText: "Full Name",
      hintText: "Enter your full name",
      prefixIcon: const Icon(Icons.person_outline),
      textFieldType: TextFieldType.alphabet,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.userNameOnChanged(value)),
    );
  }

  Widget _buildEmailField(SignInFormState state) {
    return CustomTextFormField(
      controller: TextEditingController(text: state.email),
      labelText: "Email Address",
      hintText: "Enter your email address",
      prefixIcon: const Icon(Icons.mail_outline),
      textFieldType: TextFieldType.email,
      enabled: false,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.emailOnChanged(value)),
    );
  }

  Widget _buildPhoneField() {
    return IntlPhoneField(
      controller: _phoneController,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        labelStyle: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: Colors.grey),
        prefixStyle: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      initialCountryCode: 'AE',
      onChanged: (PhoneNumber phone) {
        context.read<SignInFormBloc>().add(
              SignInFormEvent.phoneNumberOnChanged(phone.completeNumber),
            );
      },
      onCountryChanged: (country) {
        print('Country changed to: ${country.name}');
      },
    );
  }

  Widget _buildPasswordField() {
    return CustomTextFormField(
      controller: _passwordController,
      labelText: "Password",
      hintText: "Enter your password",
      prefixIcon: const Icon(Icons.lock_outline),
      textFieldType: TextFieldType.password,
      obscureText: true,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordOnChanged(value)),
    );
  }

  Widget _buildConfirmPasswordField() {
    return CustomTextFormField(
      controller: _confirmPasswordController,
      labelText: "Confirm Password",
      hintText: "Confirm your password",
      prefixIcon: const Icon(Icons.lock_outline),
      textFieldType: TextFieldType.password,
      obscureText: true,
      customValidator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please confirm your password';
        }
        if (value != _passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
    );
  }

  Widget _buildSubmitButton(SignInFormState state) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorLight.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: state.state == RequestState.loading
            ? null
            : () {
                if (_formKey.currentState!.validate()) {
                  final fullName = _nameController.text.trim();
                  final nameParts = fullName.split(' ');
                  final firstName = nameParts.first;
                  final lastName = nameParts.length > 1
                      ? nameParts.sublist(1).join(' ')
                      : '';

                  context.read<SignInFormBloc>().add(
                        SignInFormEvent.signUpWithEmail(
                          firstName,
                          lastName,
                          _phoneController.text,
                        ),
                      );
                }
              },
        child: state.state == RequestState.loading
            ? const CircularProgressIndicator(color: Colors.white)
            : const Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
