import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/metrics.dart';
import 'package:login/constants/styles.dart';
import 'package:login/screens/login/login.dart';
import 'package:login/screens/onboarding/description.dart';
import 'package:login/screens/onboarding/indicator.dart';

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
        Positioned(
            bottom: LoginMetrics.s_20 * 2,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: LoginMetrics.s_20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OnboardingIndicator(
                        currentIndex: _currentIndex, itemCount: totalPage),
                    // const SizedBox(height: LoginMetrics.s_16),
                    TextButton(
                        onPressed: _onPressSkip,
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero, minimumSize: Size.zero),
                        child: Text("Skip",
                            style: LoginTextStyles.buttonText
                                .copyWith(color: LoginColors.white))),
                  ],
                ))),
        Positioned(
          bottom: LoginMetrics.s_20 * 2,
          right: 0,
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: LoginMetrics.s_20),
              child: ElevatedButton(
                  onPressed: _onPressNext,
                  child: const Icon(Icons.add_ic_call_outlined))),
        )
      ],
    ));
  }
}
