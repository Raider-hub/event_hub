import 'package:event_hub/widgets/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String hintText;
  final ValueChanged? onChanged;
  final TextEditingController? controller;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final FormFieldValidator? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final String? fontFamily;
  final FontWeight? fontWeight;

  const CustomTextFeild(
      {Key? key,
      required this.hintText,
      this.controller,
      this.validator,
      this.obscureText = false,
      this.keyboardType,
      this.suffixIcon,
      this.onTap,
      this.prefixIcon,
      this.fontFamily,
      this.fontWeight,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: txtBoxColor, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: txtBoxColor, width: 1)),
        hintStyle: TextStyle(
            color: greyColor,
            fontFamily: fontFamily ?? airbnb,
            fontWeight: fontWeight),
        hintText: hintText,
      ),
    );
  }
}
