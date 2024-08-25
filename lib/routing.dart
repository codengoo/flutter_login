import 'dart:developer';

import 'package:login/screens/login/login.dart';
import 'package:login/screens/onboarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class RoutingScreen extends StatefulWidget {
  const RoutingScreen({super.key});

  @override
  State<RoutingScreen> createState() => _RoutingScreenState();
}

class _RoutingScreenState extends State<RoutingScreen> {
  Future<void> _navigateApp() async {
    await Future.delayed(const Duration(seconds: 5));
    final isShowOnboarding = await getOnboardingStatus();
    log("show: $isShowOnboarding");

    if (!mounted) return;

    if (isShowOnboarding) {
      await saveOnboardingStatus();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    }

    FlutterNativeSplash.remove();
  }

  @override
  void initState() {
    super.initState();
    _navigateApp();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

Future<void> saveOnboardingStatus() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  await pref.setBool('onboarding_completed', true);
}

Future<bool> getOnboardingStatus() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getBool('onboarding_completed') ?? false;
}
