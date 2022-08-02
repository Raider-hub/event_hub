import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final VoidCallback onPressed;
  const GetStartedButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onPressed,
      child: Material(
        color: primaryColor,
        child: Container(
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: 65,
          width: double.infinity,
          color: primaryColor,
          child: Center(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black.withOpacity(0.5),
            ),
            height: 50,
            width: 200,
            child: const Center(
              child: MyText(text: 'Get Started', color: Colors.white, size: 24),
            ),
          )),
        ),
      ),
    );
  }
}
