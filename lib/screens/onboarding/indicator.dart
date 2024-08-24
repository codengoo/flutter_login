import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';

class OnboardingIndicator extends StatelessWidget {
  final double size = 10;
  final double spacing = 5;
  final int currentIndex;
  final int itemCount;

  const OnboardingIndicator(
      {super.key, required this.currentIndex, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(4, (index) {
        return AnimatedOpacity(
            opacity: index == currentIndex ? 1 : 0.5,
            duration: const Duration(milliseconds: 300),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: spacing),
              width: index == currentIndex ? size * 3 : size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(size / 2),
                color: LoginColors.white,
              ),
            ));
      }),
    );
  }
}
