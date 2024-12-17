import 'package:bloc_clean_architecture/src/common/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/colors.dart';
import '../../../common/routes.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(flex: 3, child: _HeaderSection()),
            Expanded(
              flex: 3,
              child: _LoginOptionsSection(),
            ),
          ],
        ),
      ),
    );
  }
}

/// Header Section with Background Image
class _HeaderSection extends StatelessWidget {
  const _HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Screens.width(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/header_background.png'), // Add your background image here
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Welcome back 👋',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Ensure text is readable
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Choose your log in method',
                style: TextStyle(
                  fontSize: 16,
                  color: ColorLight.fromHex(
                      "#5D636A"), // Slightly faded white for subtitle
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: Screens.statusBarHeight(context),
          left: 16,
          child: IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            // Styling for the button
            style: IconButton.styleFrom(
              backgroundColor:
                  Colors.grey.withOpacity(0.4), // Grey-white background
              padding: const EdgeInsets.all(8.0), // Adjust padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0), // Rounded corners
              ),
              elevation: 3.0, // Elevation to give a slight shadow
            ),
            onPressed: () {
              context.pushReplacement(AppRoutes.LOGIN_ROUTE_NAME);
            },
          ),
        ),
      ],
    );
  }
}

/// Section with Login Options
class _LoginOptionsSection extends StatelessWidget {
  const _LoginOptionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LoginButton(
            icon: Icons.email_outlined,
            text: 'Continue with Email',
            color: Colors.purple,
            textColor: Colors.white,
            onPressed: () {
              context.pushNamed(AppRoutes.LOGIN_ROUTE_NAME);
            },
          ),
          const SizedBox(height: 15),
          LoginButton(
            imageAsset: 'assets/images/google_icon.png',
            text: 'Continue with Google',
            color: Colors.white,
            textColor: Colors.black,
            borderColor: Colors.grey.shade300,
            onPressed: () {},
          ),
          const SizedBox(height: 15),
          LoginButton(
            imageAsset: 'assets/images/apple_icon.png',
            text: 'Continue with Apple',
            color: Colors.white,
            textColor: Colors.black,
            borderColor: Colors.grey.shade300,
            onPressed: () {},
          ),
          const Spacer(),
          const _FooterText(),
        ],
      ),
    );
  }
}

/// Login Button Widget
class LoginButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final String? imageAsset;
  final Color color;
  final Color textColor;
  final Color? borderColor;
  final VoidCallback onPressed;

  const LoginButton({
    Key? key,
    this.icon,
    required this.text,
    this.imageAsset,
    required this.color,
    required this.textColor,
    this.borderColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: borderColor != null
              ? BorderSide(color: borderColor!)
              : BorderSide.none,
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, color: textColor),
            const SizedBox(width: 10),
          ],
          if (imageAsset != null) ...[
            Image.asset(imageAsset!, height: 24),
            const SizedBox(width: 10),
          ],
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

/// Footer with Terms and Privacy Text
class _FooterText extends StatelessWidget {
  const _FooterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'By clicking, you accept our Terms and Conditions,\nPrivacy Policy and Cookies Policy.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }
}
