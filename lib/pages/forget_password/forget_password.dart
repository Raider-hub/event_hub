import 'package:auto_route/auto_route.dart';
import 'package:event_hub/model/user_model.dart';
import 'package:event_hub/pages/forget_password/forget_password_state.dart';
import 'package:event_hub/pages/forget_password/provider/forget_password_notiifier.dart';
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

class ForgetPasswordPage extends HookConsumerWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    ref.listen<ForgetPasswordState>(forgetPassWordProvider,
        (previous, current) {
      if (current.status == ForgetPasswordStatus.loading) {
        context.loaderOverlay.show();
      } else if (current.status == ForgetPasswordStatus.success) {
        context.loaderOverlay.hide();
        context.pushRoute(ForgetPwRouter(children: [
          VerifyPasswordOtpRoute(userEmail: emailController.text),
        ]));
      } else if (current.status == ForgetPasswordStatus.error) {
        context.loaderOverlay.hide();
        MyCustomSnackBar.error(
            message: current.message.toString(), context: context);
      }
    });

    return FormBuilder(
      key: _formKey,
      child: Scaffold(
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
              text:
                  'Please enter your email address to request a password reset',
              size: 16,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              height: 26,
            ),
            CustomFormFieldTextBuilder(
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
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: CustomButton(
                  buttonTxt: 'SEND',
                  onPressed: () {
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      debugPrint(_formKey.currentState!.value.toString());

                      var _formValues = _formKey.currentState!.value;

                      ref.read(forgetPassWordProvider.notifier).forgetPassword(
                          user: UserModel.fromJson(_formValues));

                      //  login(user: UserModel.fromJson(_formValues));
                    } else {
                      debugPrint("validation failed");
                      debugPrint(_formKey.currentState!.value.toString());
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }
}
