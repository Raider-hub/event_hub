
import 'package:event_hub/pages/onboard/onboard_screen_contents.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  bool isLastPage = false;

  final controller = PageController();

  int currentIndex = 0;

  final List onboardContents = [
    {
      'title': 'Banana',
      'subtitle': 'Banana is an Overated fruit ',
      'image': 'assets/images/onboard/onboard_screen_one.png'
    },
    {
      'title': 'Orange',
      'subtitle': 'Orange is a good yellow fruit ',
      'image': 'assets/images/onboard/onboard_screen_one.png'
    },
    {
      'title': 'Mangod',
      'subtitle': 'Mangoes taste good ',
      'image': 'assets/images/onboard/onboard_screen_one.png'
    },
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child:OnboardScreenContents()
      ),
    );
  }
}
