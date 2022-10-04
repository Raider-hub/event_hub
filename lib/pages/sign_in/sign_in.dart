import 'package:event_hub/model/user_model.dart';
import 'package:event_hub/pages/sign_in/google_facebook_auth.dart';
import 'package:event_hub/pages/sign_in/providers/sign_in_notifier.dart';
import 'package:event_hub/pages/sign_in/sign_in_state.dart';
import 'package:event_hub/pages/widgets/custom_form.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/custom_snackbar.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:nb_utils/nb_utils.dart';

final _formKey = GlobalKey<FormBuilderState>();

class SignInPage extends HookConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<LoginState>(loginProvider, (previous, current) {
      if (current.status == LoginStatus.loading) {
         context.loaderOverlay.show();

      }
      if (current.status == LoginStatus.success) {
          context.loaderOverlay.hide();
        context
            .pushRoute(const HiddenDrawerRouter(children: [HiddenDrawerRoute()]
                // VerifyEmailRoute(),
                ));
      }
      if (current.status == LoginStatus.error) {
          context.loaderOverlay.hide();
        MyCustomSnackBar.error(
            message: current.message.toString(), context: context);
      }
    });

    final toggleObscureText = useState(true);
    final isSwitched = useState(true);
    return FormBuilder(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: FormBuilder(
          key: _formKey,
          child: ListView(
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
              CustomFormFieldTextBuilder(
                
                validator: (emailValue) {
                  final regExp = RegExp(pattern);
                  if (emailValue?.isEmpty ?? true) {
                    return 'Email is Required';
                  } else if (!regExp.hasMatch(emailValue)) {
                    return 'Invalid Email';
                  }
                  return null;
                },
                name: 'email',
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
              CustomFormFieldTextBuilder(
                
                validator: (passwordValue) {
                  if (passwordValue?.isEmpty ?? true) {
                    return 'This Field cannot be empty';
                  } else if (passwordValue.length < 7) {
                    return 'Password require 7 characters';
                  }
                  return null;
                },
                name: 'password',
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
                      if (_formKey.currentState?.saveAndValidate() ?? false) {
                        debugPrint(_formKey.currentState!.value.toString());

                        var _formValues = _formKey.currentState!.value;

                        ref
                            .read(loginProvider.notifier)
                            .login(user: UserModel.fromJson(_formValues));
                      } else {
                        debugPrint("validation failed");
                        debugPrint(_formKey.currentState!.value.toString());
                      }
                      //context.pushRoute(const ChoiceChipRoute());
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
              GooglefbAuth(onPressed: () {
                setValue(apitoken, '');
              }),
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
        ),
      ),
    );
  }
}
