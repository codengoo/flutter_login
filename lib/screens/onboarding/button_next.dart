import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/metrics.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OnboardingButtonNext extends StatelessWidget {
  final void Function()? onPressNext;
  final int totalPage;
  final int currentIndex;

  const OnboardingButtonNext(
      {super.key,
      this.onPressNext,
      required this.totalPage,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: LoginMetrics.s_20 * 2,
      right: 0,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: LoginMetrics.s_20),
          child: Stack(alignment: Alignment.center, children: [
            Center(
                child: CircularPercentIndicator(
              radius: 45.0,
              lineWidth: 5.0,
              percent: totalPage != 0 ? currentIndex / (totalPage - 1) : 0,
              progressColor: LoginColors.white,
              backgroundColor: Colors.transparent,
              animation: true,
              animateFromLastPercent: true,
              circularStrokeCap: CircularStrokeCap.round,
              curve: Curves.easeInOut,
            )),
            IconButton(
              icon: const Icon(Icons.chevron_right_rounded),
              iconSize: 30,
              onPressed: onPressNext,
              style: IconButton.styleFrom(
                  backgroundColor: LoginColors.white,
                  padding: const EdgeInsets.all(LoginMetrics.s_20)),
            )
          ])),
    );
  }
}
