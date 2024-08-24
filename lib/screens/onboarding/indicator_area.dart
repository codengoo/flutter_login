import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/metrics.dart';
import 'package:login/constants/styles.dart';
import 'package:login/screens/onboarding/indicator.dart';

class OnboardingIndicatorArea extends StatelessWidget {
  final void Function()? onPressSkip;
  final int totalPage;
  final int currentIndex;

  const OnboardingIndicatorArea(
      {super.key,
      this.onPressSkip,
      required this.totalPage,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: LoginMetrics.s_20 * 2,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: LoginMetrics.s_20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OnboardingIndicator(
                    currentIndex: currentIndex, itemCount: totalPage),
                // const SizedBox(height: LoginMetrics.s_16),
                TextButton(
                    onPressed: onPressSkip,
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, minimumSize: Size.zero),
                    child: Text("Skip",
                        style: LoginTextStyles.buttonText
                            .copyWith(color: LoginColors.white))),
              ],
            )));
  }
}
