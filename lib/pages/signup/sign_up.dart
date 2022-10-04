import 'package:auto_route/auto_route.dart';
import 'package:event_hub/model/user_model.dart';
import 'package:event_hub/pages/sign_in/google_facebook_auth.dart';
import 'package:event_hub/pages/signup/provider/signup_notifier.dart';
import 'package:event_hub/pages/signup/signup_state.dart';
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
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

final _formKey = GlobalKey<FormBuilderState>();

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleObscurepass = useState(true);
    final toggleObscureconfirmpass = useState(true);

    ///final _isLoaderVisible = useState(false);

    final fullnameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPassController = useTextEditingController();
    final emailController = useTextEditingController();

    // userModel(String fullname, String email) {
    //   var userModel = UserModel(fullname: fullname, email: email);

    //   return userModel;
    // }

    ref.listen<CreateUserState>(createUserProvider, (prev, current) {
      if (current.status == CreateUserStatus.loading) {
        context.loaderOverlay.show();
        // const CircularProgressIndicator()
      } else if (current.status == CreateUserStatus.success) {
        context.loaderOverlay.hide();
        context.pushRoute(ForgetPwRouter(children: [
          //  SignInRoute(),
          VerifyEmailRoute(
              userEmail: _formKey.currentState?.fields['email']?.value),

          // VerifyEmailRoute(),
        ]));
      } else if (current.status == CreateUserStatus.error) {
        context.loaderOverlay.hide();

        //     showFlushbar(
        // context: context,
        // flushbar: Flushbar(
        //   margin: const EdgeInsets.all(10),
        //   isDismissible: true,
        //   flushbarStyle: FlushbarStyle.FLOATING,
        //   message: current.message,
        //   messageColor: primaryColor,
        //   duration: const Duration(seconds: 3),
        //   borderRadius: BorderRadius.circular(10),
        //   backgroundColor: Colors.red,
        //   flushbarPosition: FlushbarPosition.TOP,
        //   icon: const Icon(Icons.error_outline_rounded),
        // )..show(context));

        MyCustomSnackBar.error(
            message: current.message.toString(), context: context);

        // snackbar her

        // print('There is a problem');
      }
    });

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
        body: FormBuilder(
          key: _formKey,
          child: ListView(
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
                CustomFormFieldTextBuilder(
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (nameValue) {
                    if (nameValue?.isEmpty ?? true) {
                      return 'This Field cannot be empty';
                    } else if (nameValue.length < 4) {
                      return 'This Field requires atleast 4 characters';
                    }
                    return null;
                  },
                  controller: fullnameController,
                  prefixIcon: IconButton(
                    onPressed: (() {
                      const InkWell();
                    }),
                    icon: SvgPicture.asset(
                      'assets/icons/profile.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  hintText: 'Full name',
                  name: 'fullname',
                ),
                const SizedBox(
                  height: 19,
                ),
                CustomFormFieldTextBuilder(
                  name: 'email',
                  controller: emailController,
                  validator: (emailValue) {
                    final regExp = RegExp(pattern);
                    if (emailValue?.isEmpty ?? true) {
                      return 'Email is Required';
                    } else if (!regExp.hasMatch(emailValue)) {
                      return 'Invalid Email';
                    }
                    return null;
                  },
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
                ),
                const SizedBox(
                  height: 19,
                ),
                CustomFormFieldTextBuilder(
                  name: 'password',
                  controller: passwordController,
                  validator: (passwordValue) {
                    if (passwordValue?.isEmpty ?? true) {
                      return 'This Field cannot be empty';
                    } else if (passwordValue.length < 7) {
                      return 'Password require 7 characters';
                    }
                    return null;
                  },
                  prefixIcon: IconButton(
                    onPressed: (() {
                      const InkWell();
                    }),
                    icon: SvgPicture.asset(
                      'assets/icons/lock.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  obscureText: toggleObscurepass.value,
                  hintText: 'Your password',
                  suffixIcon: IconButton(
                    onPressed: () =>
                        toggleObscurepass.value = !toggleObscurepass.value,
                    icon: SvgPicture.asset(
                      'assets/icons/eye.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                CustomFormFieldTextBuilder(
                  name: 'confirmpassword',
                  controller: confirmPassController,
                  validator: (cpasswordValue) {
                    if (cpasswordValue?.isEmpty ?? true) {
                      return 'This Field cannot be empty';
                    } else if (cpasswordValue !=
                        _formKey
                            .currentState?.fields['password']?.value) {
                      return 'Password does not match';
                    }
                    return null;
                  },
                  prefixIcon: IconButton(
                    onPressed: (() {
                      const InkWell();
                    }),
                    icon: SvgPicture.asset(
                      'assets/icons/lock.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  obscureText: toggleObscureconfirmpass.value,
                  hintText: 'Confirm password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      toggleObscureconfirmpass.value =
                          !toggleObscureconfirmpass.value;
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/eye.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: CustomButton(
                      buttonTxt: 'SIGN UP',
                      onPressed: () async {
                        //   _formKey.currentState!.save();

                        if (_formKey.currentState?.saveAndValidate() ?? false) {
                          debugPrint(_formKey.currentState!.value.toString());

                          var _formValues = _formKey.currentState!.value;

                          ref.read(createUserProvider.notifier).createUser(
                              user: UserModel.fromJson(_formValues)) ;
                        } else {
                          debugPrint("validation failed");
                          debugPrint(_formKey.currentState!.value.toString());
                        }
                      },
                    )),
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
                GooglefbAuth(onPressed: () {
                  context.pushRoute(const ChoiceChipRoute());


                }),
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
              ]),
        ));
  }
}
