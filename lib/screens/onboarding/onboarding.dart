import 'package:flutter/material.dart';
import 'package:login/constants/images.dart';
import 'package:login/screens/onboarding/content.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          children: const [
            OnboardingContent()
          ],
        )
      ],
    ));
  }
}
