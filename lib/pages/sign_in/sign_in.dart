import 'package:event_hub/pages/sign_in/google_facebook_auth.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/pages/widgets/my_textfield.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_route/auto_route.dart';

class SignInPage extends HookWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final toggleObscureText = useState(true);
    final isSwitched = useState(true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
        children: [
          SvgPicture.asset('assets/icons/event_hub.svg'),
          const SizedBox(
            height: 30,
          ),
          const MyText(
            text: 'Sign in',
            size: 24,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: 21,
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
            hintText: 'abc@email.com',
            fontFamily: airbnb,
          ),
          const SizedBox(
            height: 19,
          ),
          CustomTextFeild(
            prefixIcon: IconButton(
              onPressed: (() {
                const InkWell();
              }),
              icon: SvgPicture.asset(
                'assets/icons/lock.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
            obscureText: toggleObscureText.value,
            hintText: 'Your password',
            fontFamily: 'Cereal',
            fontWeight: FontWeight.w400,
            suffixIcon: IconButton(
              onPressed: () =>
                  toggleObscureText.value = !toggleObscureText.value,
              icon: SvgPicture.asset(
                'assets/icons/eye.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Switch(
                    value: isSwitched.value,
                    onChanged: (value) {
                      isSwitched.value = value;
                    },
                    activeTrackColor: primaryColor.withOpacity(0.5),
                    activeColor: primaryColor,
                  ),
                  const SizedBox(
                    width: 8.7,
                  ),
                  const MyText(
                    color: Color(0xFF120D26),
                    text: 'Remember Me',
                    size: 14,
                    lineHeight: 1.64,
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  context.pushRoute(const ForgetPwRouter(children: [
                    //  SignInRoute(),
                    ForgetPasswordRoute(),

                    // VerifyEmailRoute(),
                  ]));
                },
                child: MyText(
                  color: const Color(0xFF120D26),
                  onPressed: () {},
                  text: 'Forgot Password?',
                  size: 14,
                  lineHeight: 1.64,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 36,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: CustomButton(
                buttonTxt: 'SIGN IN',
                onPressed: () {
                  context.pushRoute(const ChoiceChipRoute());
                },
              )),
          const SizedBox(
            height: 21,
          ),
          const Center(
              child: MyText(
            text: 'OR',
            size: 22,
            color: Color(0xFF9D9898),
          )),
          const SizedBox(
            height: 10,
          ),
          GooglefbAuth(onPressed: () {}),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (() => context.pushRoute(const SignUpRoute())),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                MyText(
                  color: Color(0xff120D26),
                  text: "Don’t have an account?",
                  size: 15,
                  fontFamily: airbnb,
                  fontWeight: FontWeight.w400,
                  lineHeight: 1.67,
                ),
                MyText(
                  text: ' Sign up',
                  color: primaryColor,
                  size: 15,
                  fontFamily: airbnb,
                  fontWeight: FontWeight.w400,
                  lineHeight: 1.67,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
