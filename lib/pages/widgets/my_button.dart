// ignore_for_file: deprecated_member_use

import 'package:event_hub/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String buttonTxt;
  final double? raduis;
  final FontWeight? txtWeight;
  final VoidCallback? onPressed;
  final double? size;
  const CustomButton(
      {Key? key,
      this.height,
      this.width,
      this.color,
      required this.buttonTxt,
      this.raduis,
      this.txtWeight,
      this.size,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color ?? primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: SizedBox(
        height: height ?? 58,
        width: width ?? 271,
        child: Stack(
          children: [
            Center(
              child: Text(
                buttonTxt,
                  style: TextStyle(
                      fontSize: size ?? 14,
                      color: color ?? Colors.white,
                      fontWeight: txtWeight ?? FontWeight.w500),
              ),
            ),
            Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: SvgPicture.asset('assets/icons/arrow_on_button.svg')),
          ],
        ),
      ),
    );

    // Stack(
    //   alignment: AlignmentDirectional.center,
    //   children: [
    //     Container(
    //         height: height ?? 58,
    //         width: width ?? 271,
    //         decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(15),
    //             color: color ?? primaryColor),
    //         child: FlatButton(
    //           onPressed: onPressed,
    //           child: Center(
    //             child: Text(
    //               buttonTxt,
    //               style: TextStyle(
    //                   fontSize: size ?? 14,
    //                   color: color ?? Colors.white,
    //                   fontWeight: txtWeight ?? FontWeight.w500),
    //             ),
    //           ),
    //         )),
    //     Positioned(
    //       right: 24,
    //       child: Align(
    //           alignment: Alignment.centerRight,
    //           child: SvgPicture.asset('assets/icons/arrow_on_button.svg')),
    //     ),
    //   ],
    // );
  }
}
