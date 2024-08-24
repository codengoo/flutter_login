import 'package:flutter/widgets.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Welcome to Our App',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        Text('This is an onboarding screen', style: TextStyle(fontSize: 18, fontFamily: "SFDisplay")),
        SizedBox(height: 20),
      ],
    );
  }
}
