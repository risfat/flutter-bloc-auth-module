import 'package:animated_flutter_widgets/page_transitions/page_transition_animation.dart';
import 'package:bloc_clean_architecture/src/common/screens.dart';
import 'package:bloc_clean_architecture/src/presentation/page/otp/otp_screen.dart';
import 'package:flutter/material.dart';

class AccountNotFoundDialog extends StatelessWidget {
  const AccountNotFoundDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: Screens.width(context), // Adjust width as per need
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Close button
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ),

            // Icon and Title
            Row(
              children: [
                // Placeholder icon resembling the image
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.red,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    "Account not found!!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Subtitle Text
            const Text(
              "It looks like there's no account associated with this email. Click continue to open a new account.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 24),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back Button - Outlined
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black87,
                      fixedSize: Size(100, 50),
                      side: BorderSide(color: Colors.grey.shade400),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Back"),
                  ),
                ),
                const SizedBox(width: 10),

                // Create Account Button
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade800,
                      foregroundColor: Colors.white,
                      fixedSize: Size(100, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          SlideLeftPageAnimation(
                              page: const OtpVerificationScreen()));
                    },
                    child: const Text("Create Account"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
