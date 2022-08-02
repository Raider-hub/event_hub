import 'package:event_hub/widgets/constants.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String? text;
  final double size;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? color;
  final String? fontFamily;
  final double? lineHeight;
  final TextAlign? textAlign;
  final double? lineSpace;
  final VoidCallback? onPressed;

  const MyText({
    Key? key,
    required this.text,
    required this.size,
    this.fontWeight,
    this.fontStyle,
    this.color,
    this.fontFamily,
    this.lineHeight,
    this.textAlign,
    this.lineSpace,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        textAlign: textAlign,
        style: TextStyle(
            color: color ?? Colors.black,
            fontSize: size,
            fontWeight: fontWeight,
            fontStyle: fontStyle ?? FontStyle.normal,
            fontFamily: fontFamily ?? airbnb,
            height: lineHeight,
            // decoration: TextDecoration.none,
            letterSpacing: lineSpace));
  }
}
