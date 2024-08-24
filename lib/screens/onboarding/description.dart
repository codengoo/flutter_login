import 'package:flutter/material.dart';
import 'package:login/screens/onboarding/content.dart';
import 'package:login/screens/onboarding/data.dart';
import 'package:login/constants/colors.dart';

class OnboardingDescription extends StatelessWidget {
  final PageController? pageController;
  final void Function(int value)? onPageChanged;

  const OnboardingDescription(
      {super.key, this.pageController, this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return (PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: const [
        OnboardingContent(
          onboardingData: OnboardingData.onboarding1,
          color: LoginColors.yellow,
        ),
        OnboardingContent(
          onboardingData: OnboardingData.onboarding2,
          color: LoginColors.purple,
        ),
        OnboardingContent(
          onboardingData: OnboardingData.onboarding3,
          color: LoginColors.red,
        ),
        OnboardingContent(
          onboardingData: OnboardingData.onboarding4,
          color: LoginColors.blue,
        )
      ],
    ));
  }
}
