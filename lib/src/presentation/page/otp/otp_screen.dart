import 'dart:async';

import 'package:bloc_clean_architecture/src/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

import '../../../common/constants.dart';
import '../../../common/enums.dart';
import '../../../common/images.dart';
import '../../../common/routes.dart';
import '../../bloc/sign_in_form/sign_in_form_bloc.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  static const int _initialCountdown = 30;
  int _countdown = _initialCountdown;
  Timer? _timer;
  String _enteredOtp = '';
  bool isNavigated = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
    context.read<SignInFormBloc>().add(const SignInFormEvent.sendOtp());
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (_countdown > 0) {
          _countdown--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  void _resendOTP() {
    context.read<SignInFormBloc>().add(const SignInFormEvent.sendOtp());
    setState(() {
      _countdown = _initialCountdown;
    });
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: BlocConsumer<SignInFormBloc, SignInFormState>(
            listener: (context, state) {
              if (state.state == RequestState.error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );
              } else if (state.state == RequestState.loaded &&
                  state.isOtpVerified &&
                  !isNavigated) {
                isNavigated = true;

                context.replaceNamed(AppRoutes.PERSONAL_INFO_ROUTE_NAME);
                // Navigator.push(context,
                //     SlideLeftPageAnimation(page: PersonalInfoScreen()));
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildBackButton(context),
                  const SizedBox(height: 20),
                  _buildImage(),
                  const SizedBox(height: 20),
                  _buildTitleAndSubtitle(state),
                  const SizedBox(height: 30),
                  _buildOtpInstructions(),
                  const SizedBox(height: 30),
                  _buildOtpInput(),
                  const SizedBox(height: 20),
                  _buildResendOtpSection(),
                  const Spacer(),
                  _buildSubmitButton(state),
                  const SizedBox(height: 20),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => context.pop(),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      Images.OTP,
      height: 300,
    );
  }

  Widget _buildTitleAndSubtitle(SignInFormState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "OTP verification",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "We've sent an OTP to ${state.email}",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildOtpInstructions() {
    return Text(
      "Please enter the code below:",
      style: TextStyle(color: ColorLight.fromHex("#5D636A")),
    );
  }

  Widget _buildOtpInput() {
    final defaultPinTheme = PinTheme(
      width: 100,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.5),
        borderRadius: BorderRadius.circular(30),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        border: Border.all(color: ColorLight.primary),
        borderRadius: BorderRadius.circular(30),
      ),
    );

    return Center(
      child: Pinput(
        length: 6,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        keyboardType: TextInputType.number,
        onChanged: (pin) {
          _enteredOtp = pin;
        },
        onCompleted: (pin) {
          _enteredOtp = pin;
          context.read<SignInFormBloc>().add(SignInFormEvent.verifyOtp(pin));
        },
      ),
    );
  }

  Widget _buildResendOtpSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't receive the OTP?",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: _countdown == 0 ? _resendOTP : null,
          child: Text(
            "Resend OTP",
            style: TextStyle(
              color: _countdown == 0 ? ColorLight.primary : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 10),
        if (_countdown > 0)
          Text(
            "${_countdown}s",
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }

  Widget _buildSubmitButton(SignInFormState state) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (state.state != RequestState.loading) {
            if (_enteredOtp.length == 6) {
              context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.verifyOtp(_enteredOtp));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Please enter a valid OTP")),
              );
            }
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorLight.primary,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: state.state == RequestState.loading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SpinKitThreeBounce(
                    size: 15,
                    color: Colors.white,
                  ),
                  const SizedBox(width: SPACE12),
                  Text(
                    'Loading...',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              )
            : const Text(
                "Submit",
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
