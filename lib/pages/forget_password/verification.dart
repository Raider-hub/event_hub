import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/forget_password/otp_field.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            context.router.pop();
          },
          child: SvgPicture.asset(
            'assets/icons/back.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
        children: [
          const MyText(
            text: 'Verification',
            size: 24,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: 12,
          ),
          const MyText(
            text: 'We’ve send you the verification code on +1 2620 0323 7631',
            size: 16,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              OtpTextField(first: true, last: false),
              OtpTextField(first: false, last: false),
              OtpTextField(first: false, last: false),
              OtpTextField(first: false, last: true),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: CustomButton(
                buttonTxt: 'Continue',
                onPressed: () {
                 //context.router.pushWidget();
                },
              )),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MyText(
                text: 'Re-send code in ',
                size: 16,
                fontFamily: airbnb,
                fontWeight: FontWeight.w400,
                lineHeight: 1.67,
              ),
              MyText(
                text: '0:20',
                color: primaryColor,
                size: 16,
                fontFamily: airbnb,
                fontWeight: FontWeight.w400,
                lineHeight: 1.67,
              ),
            ],
          )
        ],
      ),
    );
  }
}
