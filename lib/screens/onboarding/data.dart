import 'package:login/constants/images.dart';

final class OnboardingDataType {
  final String title;
  final String description;
  final String image;

  const OnboardingDataType(
      {required this.title, required this.description, required this.image});
}

final class OnboardingData {
  static const OnboardingDataType onboarding1 = OnboardingDataType(
      title: "Your first car without a driver's license",
      description: "Goes to meet people who just got their license",
      image: LoginImagePaths.onBoarding1);

  static const OnboardingDataType onboarding2 = OnboardingDataType(
      title: "Always there: more than 1000 cars in Login",
      description: "Our company is leader by the number od cars in the fleet",
      image: LoginImagePaths.onBoarding2);

  static const OnboardingDataType onboarding3 = OnboardingDataType(
      title: "Do not pay for parking, maintenance and gasoline",
      description: "We will pay for you, all expenses related to the car",
      image: LoginImagePaths.onBoarding3);

  static const OnboardingDataType onboarding4 = OnboardingDataType(
      title: "29 car models: from Skoda Octavia to Porsche 911",
      description: "Choose between regular car models or exclusive ones",
      image: LoginImagePaths.onBoarding4);
}
