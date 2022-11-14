import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';

class PasswordChangeDonePage extends StatelessWidget {
  const PasswordChangeDonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // /  mainAxisAlignment: MainAxisAlignment.start,

        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Image.asset(
              'assets/images/done.png',
              scale: 3.5,
              // height: 20,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Center(
              child: MyText(
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w500,
                  text: 'Password Changed',
                  color: primaryColor,
                  size: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Center(
              child: MyText(
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w400,
                  text:
                      'you have sucessfully been able to change your password, you can proceed to login.',
                  color: Colors.grey,
                  size: 18),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
              buttonTxt: 'Back to login',
              onPressed: () {
                context.replaceRoute(const SignInRoute());

                //  context.router.popUntilRouteWithName('SignInRoute');
              })
        ],
      ),
    );
  }
}
