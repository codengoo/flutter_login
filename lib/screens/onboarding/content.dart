import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/metrics.dart';
import 'package:login/constants/styles.dart';
import 'package:login/screens/onboarding/data.dart';

class OnboardingContent extends StatelessWidget {
  final OnboardingDataType onboardingData;
  final Color color;

  const OnboardingContent(
      {super.key, required this.onboardingData, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(LoginMetrics.s_20),
              child: Column(
                children: [
                  Text(onboardingData.title, style: LoginTextStyles.titleStyle),
                  const SizedBox(height: LoginMetrics.s_16),
                  Text(onboardingData.description,
                      style: LoginTextStyles.description
                          .copyWith(color: LoginColors.white),
                      softWrap: true),
                ],
              ),
            ),
            Image(image: AssetImage(onboardingData.image))
          ],
        )));
  }
}
