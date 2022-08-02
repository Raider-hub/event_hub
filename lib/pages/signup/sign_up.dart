import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/sign_in/google_facebook_auth.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/pages/widgets/my_textfield.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends HookWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toggleObscureText1 = useState(true);
    final toggleObscureText2 = useState(true);
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
                text: 'Sign Up',
                size: 24,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFeild(
                  obscureText: false,
                  prefixIcon: IconButton(
                    onPressed: (() {
                      const InkWell();
                    }),
                    icon: SvgPicture.asset(
                      'assets/icons/profile.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  hintText: 'Full name'),
              const SizedBox(
                height: 19,
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
                obscureText: toggleObscureText1.value,
                hintText: 'Your password',
                suffixIcon: IconButton(
                  onPressed: () =>
                      toggleObscureText1.value = !toggleObscureText1.value,
                  icon: SvgPicture.asset(
                    'assets/icons/eye.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
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
                obscureText: toggleObscureText2.value,
                hintText: 'Confirm password',
                suffixIcon: IconButton(
                  onPressed: () =>
                      toggleObscureText2.value = !toggleObscureText2.value,
                  icon: SvgPicture.asset(
                    'assets/icons/eye.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: CustomButton(buttonTxt: 'SIGN UP')),
              const SizedBox(
                height: 24,
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
                height: 18,
              ),
              GestureDetector(
                onTap: (() => context.router.pop()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    MyText(
                      color: Color(0xff120D26),
                      text: "Already have an account?",
                      size: 15,
                      fontFamily: airbnb,
                      fontWeight: FontWeight.w400,
                      lineHeight: 1.67,
                    ),
                    MyText(
                      text: ' Sign in',
                      color: primaryColor,
                      size: 15,
                      fontFamily: airbnb,
                      fontWeight: FontWeight.w400,
                      lineHeight: 1.67,
                    ),
                  ],
                ),
              )
            ]));
  }
}
