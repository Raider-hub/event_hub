import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GooglefbAuth extends StatelessWidget {
  final VoidCallback onPressed;
  const GooglefbAuth({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
        onTap: onPressed,
          child: Container(
            height: 56,
            width: 273,
            decoration: (BoxDecoration(
                color: Colors.black.withOpacity(0.02),
                borderRadius: BorderRadius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/google.svg'),
                const SizedBox(
                  width: 20,
                ),
                const MyText(
                  text: 'Login with Google',
                  size: 18,
            fontFamily: airbnb,
                  color: Color(0xff120D26),
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        GestureDetector(
        onTap: onPressed,
          child: Container(
            height: 56,
            width: 273,
            decoration: (BoxDecoration(
                color: Colors.black.withOpacity(0.02),
                borderRadius: BorderRadius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/facebook.svg'),
                const SizedBox(
                  width: 20,
                ),
                const MyText(
                  text: 'Login with Facebook',
                  size: 18,
                fontFamily: airbnb,
                  color: Color(0xff120D26),
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
