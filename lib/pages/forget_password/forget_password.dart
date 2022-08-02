import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/pages/widgets/my_textfield.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

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
            text: 'Reset Password',
            size: 24,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: 12,
          ),
          const MyText(
            text: 'Please enter your email address to request a password reset',
            size: 16,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 26,
          ),
          CustomTextFeild(
              obscureText: false,
              prefixIcon: IconButton(
                onPressed: (() {
                  const InkWell();
                }),
                icon: SvgPicture.asset(
                  'assets/icons/email.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
              hintText: 'abc@email.com'),
          const SizedBox(
            height: 40,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: CustomButton(
                buttonTxt: 'SEND',
                onPressed: () {
                  context.pushRoute(const ForgetPwRouter(children: [
                    //  SignInRoute(),

                    VerifyEmailRoute(),
                  ]));
                  //context.router.pushWidget(const VerifyEmail());
                },
              )),
        ],
      ),
    );
  }
}
