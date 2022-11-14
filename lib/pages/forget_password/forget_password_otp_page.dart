import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/forget_password/provider/verify_password_notifier.dart';
import 'package:event_hub/pages/forget_password/state/verify_password_state.dart';
import 'package:event_hub/pages/otp_verification/otp_field.dart';
import 'package:event_hub/pages/otp_verification/provider/countdown_notifier.dart';
import 'package:event_hub/pages/otp_verification/provider/resend_otp_notifier.dart';
import 'package:event_hub/pages/otp_verification/resend_otp_state.dart';

import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/custom_snackbar.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class VerifyPasswordOtpPage extends HookConsumerWidget {
  const VerifyPasswordOtpPage(
    this.userEmail, {
    Key? key,
  }) : super(key: key);

  final String userEmail;

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<VerifyPasswordState>(verifyPasswordProvider,
        (previous, current) {
      if (current.status == VerifyPasswordStatus.loading) {
        context.loaderOverlay.show();
      } else if (current.status == VerifyPasswordStatus.success) {
        context.loaderOverlay.hide();
        context.pushRoute(const NewPasswordRoute());
      } else if (current.status == VerifyPasswordStatus.error) {
        context.loaderOverlay.hide();

        MyCustomSnackBar.error(
            message: current.message.toString(), context: context);
      }
    });


    ref.listen<ResendOtpState>(resendOtpProvider, (previous, current) {
      if (current.status == ResendOtpStatus.loading) {
        context.loaderOverlay.show();
      } else if (current.status == ResendOtpStatus.success) {
        MyCustomSnackBar.sucess(
            message: current.message.toString(), context: context);

        context.loaderOverlay.hide();
      } else if (current.status == ResendOtpStatus.error) {
        MyCustomSnackBar.error(
            message: current.message.toString(), context: context);


      }
    });


    // ref.listen(countDownProvider, (previous, current) {
    //   if (current == CountDownStatus.started) {
    //   } else if (current == CountDownStatus.finished) {
    //     toggleResendOtp.value == !toggleResendOtp.value;
    //   }
    // });

// final timerProvider = StateNotifierProvider<CountDownTimerNotifier, CountDownState>((ref) =>  CountDownTimerNotifier(r));

    // ref.listen<CountDownState>(countDownProvider, (previous, current) {
    //   if (current.status == CountDownStatus.initial) {

    //     ref.read(countDownProvider.notifier).start();
    //     log(current.timeLeft.inSeconds.toString());
    //   }
    // });
    Duration counterstate = ref.watch(countDownProvider).timeLeft;

    final otpController1 = useTextEditingController();
    final otpController2 = useTextEditingController();
    final otpController3 = useTextEditingController();
    final otpController4 = useTextEditingController();

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
            text: 'Forget Password',
            size: 24,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: 12,
          ),
          MyText(
            text: 'We’ve send you the verification code to $userEmail',
            size: 16,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OtpTextField(
                first: true,
                last: false,
                texEditingController: otpController1,
              ),
              OtpTextField(
                first: false,
                last: false,
                texEditingController: otpController2,
              ),
              OtpTextField(
                first: false,
                last: false,
                texEditingController: otpController3,
              ),
              OtpTextField(
                first: false,
                last: true,
                texEditingController: otpController4,
              ),
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
                  ref.read(verifyPasswordProvider.notifier).verifyPassword(
                      "${otpController1.text.trim()}${otpController2.text.trim()}${otpController3.text.trim()}${otpController4.text.trim()}");
                },
              )),
          const SizedBox(
            height: 24,
          ),
          counterstate.inSeconds == 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MyText(
                      text: "Didn't Receive code?",
                      size: 16,
                      fontFamily: airbnb,
                      fontWeight: FontWeight.w400,
                      lineHeight: 1.67,
                    ),
                    GestureDetector(
                      onTap: () async {
                        ref.read(resendOtpProvider.notifier).resendOtp().then(
                            (value) => {
                                  ref.read(countDownProvider.notifier).reStart()
                                });
                      },
                      child: const MyText(
                        text: 'request new code',
                        color: primaryColor,
                        size: 16,
                        fontFamily: airbnb,
                        fontWeight: FontWeight.w400,
                        lineHeight: 1.67,
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MyText(
                      text: 'Re-send code in ',
                      size: 16,
                      fontFamily: airbnb,
                      fontWeight: FontWeight.w400,
                      lineHeight: 1.67,
                    ),
                    // ref.read(countDownProvider.notifier).start()
                    GestureDetector(
                      //  onTap: () => ,
                      child: MyText(
                        text: counterstate.inSeconds.toString(),
                        color: primaryColor,
                        size: 16,
                        fontFamily: airbnb,
                        fontWeight: FontWeight.w400,
                        lineHeight: 1.67,
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
