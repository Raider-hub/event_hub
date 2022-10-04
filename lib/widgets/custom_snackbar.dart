import 'package:another_flushbar/flushbar.dart';
import 'package:event_hub/widgets/my_text.dart';

import 'package:flutter/material.dart';

class MyCustomSnackBar extends Flushbar {

 
//  final String tilte;
//  final String description;

  MyCustomSnackBar(
      {Key? key,
      required String message,
      FlushbarPosition flushbarPosition = FlushbarPosition.TOP,
      FlushbarStyle flushbarStyle = FlushbarStyle.FLOATING,
      Duration duration = const Duration(seconds: 3),
      bool shouldIconPulse = false,
      bool isDismissible = true,
      required Color backgroundColor,
      EdgeInsets edgeInsets = const EdgeInsets.all(10),
      Icon icon = const Icon(Icons.error_outline_rounded)})
      : super(
            key: key,
            messageText: MyText(
              text: message,
              size: 14,
              color: Colors.white,
            ),
            duration: duration,
            shouldIconPulse: shouldIconPulse,
            isDismissible: true,
            flushbarPosition: flushbarPosition,
            borderRadius: BorderRadius.circular(10),
            margin: edgeInsets,
            backgroundColor: backgroundColor,
            icon: icon);
  static Future error(
      {required String message, required BuildContext context}) {
    return MyCustomSnackBar(
      duration: const Duration(seconds: 2),
      flushbarStyle: FlushbarStyle.FLOATING,
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.red,
    ).show(context);
  }

    static Future sucess(
      {required String message, required BuildContext context}) {
    return MyCustomSnackBar(
      duration: const Duration(seconds: 2),
      flushbarStyle: FlushbarStyle.FLOATING,
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.green,
    ).show(context);
  }
      static Future warning(
      {required String message, required BuildContext context}) {
    return MyCustomSnackBar(
      duration: const Duration(seconds: 2),
      flushbarStyle: FlushbarStyle.FLOATING,
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: const Color(0xffff9966),
    ).show(context);
  }
}




//  showFlushbar(
//             context: context,
//             flushbar: Flushbar(
//               margin: const EdgeInsets.all(10),
//               isDismissible: true,
//               flushbarStyle: FlushbarStyle.FLOATING,
//               message: current.message.toString(),
//               duration: const Duration(seconds: 3),
//               borderRadius: BorderRadius.circular(10),
//               backgroundColor: Colors.red,
//               flushbarPosition: FlushbarPosition.TOP,
//               icon: const Icon(Icons.error_outline_rounded),
//             )..show(context));