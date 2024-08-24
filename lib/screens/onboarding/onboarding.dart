import 'dart:math';

import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/metrics.dart';
import 'package:login/constants/styles.dart';
import 'package:login/screens/login/login.dart';
import 'package:login/screens/onboarding/button_next.dart';
import 'package:login/screens/onboarding/description.dart';
import 'package:login/screens/onboarding/indicator.dart';
import 'package:login/screens/onboarding/indicator_area.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<StatefulWidget> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int totalPage = 4;
  final _pageController = PageController();
  int _currentIndex = 0;

  void _onPageChanged(int pageIndex) {
    setState(() {
      _currentIndex = pageIndex;
    });
  }

  void _onPressNext() {
    print("aaa");
    if (_currentIndex < totalPage - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }


  void _onPressSkip() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        OnboardingDescription(
            pageController: _pageController, onPageChanged: _onPageChanged),
        OnboardingIndicatorArea(
            currentIndex: _currentIndex,
            totalPage: totalPage,
            onPressSkip: _onPressSkip),
        OnboardingButtonNext(
          currentIndex: _currentIndex,
          totalPage: totalPage,
          onPressNext: _onPressNext
        )
      ],
    ));
  }
}
