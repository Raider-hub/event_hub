import 'package:auto_route/auto_route.dart';
import 'package:event_hub/model/user_model.dart';
import 'package:event_hub/pages/forget_password/provider/new_password_notifier.dart';
import 'package:event_hub/pages/forget_password/state/new_password_state.dart';
import 'package:event_hub/pages/widgets/custom_form.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/custom_snackbar.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

final _formKey = GlobalKey<FormBuilderState>();

class NewPasswordPage extends HookConsumerWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleObscureText = useState(true);
    final toggleObscureText2 = useState(true);
    final passwordField1 = useTextEditingController();
    final passwordField2 = useTextEditingController();

    ref.listen<NewPasswordState>(newPasswordProvider, (previous, current) {
      if (current.status == NewPasswordStatus.loading) {
        context.loaderOverlay.show();
      } else if (current.status == NewPasswordStatus.success) {
        context.loaderOverlay.hide();
        context.pushRoute(const PasswordChangeDoneRoute());
      } else if (current.status == NewPasswordStatus.error) {
        context.loaderOverlay.hide();
        MyCustomSnackBar.error(message: 'An Error Occured', context: context);
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
              text: 'Create new Password',
              size: 24,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 12,
            ),
            const MyText(
              text: 'Please enter your new password',
              size: 16,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              height: 26,
            ),
            CustomFormFieldTextBuilder(
              
              controller: passwordField1,
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
              hintText: 'Your new password',
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
            const SizedBox(
              height: 20,
            ),
            CustomFormFieldTextBuilder(
              controller: passwordField2,
              name: 'confirmpassword',
              validator: (cpasswordValue) {
                if (cpasswordValue?.isEmpty ?? true) {
                  return 'This Field cannot be empty';
                } else if (cpasswordValue !=
                    _formKey.currentState?.fields['password']?.value) {
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
              obscureText: toggleObscureText2.value,
              hintText: 'Confirm password',
              fontFamily: 'Cereal',
              fontWeight: FontWeight.w400,
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
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: CustomButton(
                  buttonTxt: 'CONTINUE',
                  onPressed: () {
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      debugPrint(_formKey.currentState!.value.toString());

                      var _formValues = _formKey.currentState!.value;

                      ref
                          .read(newPasswordProvider.notifier)
                          .resetPassword(user: UserModel.fromJson(_formValues));

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
