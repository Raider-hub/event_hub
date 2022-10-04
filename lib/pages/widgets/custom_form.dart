import 'package:event_hub/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomFormFieldTextBuilder extends StatelessWidget {
  final String label;
  final String name;
  final ValueChanged? onChanged;
  final String? hintText;
  final TextEditingController? controller;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final FormFieldValidator? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final AutovalidateMode? autovalidateMode;

  const CustomFormFieldTextBuilder(
      {Key? key,
      this.label = '',
      required this.name,
      this.onChanged,
      this.controller,
      this.suffixIcon,
      this.prefixIcon,
      this.validator,
      this.obscureText = true,
      this.keyboardType,
      this.onTap,
      this.fontFamily,
      this.fontWeight,
      this.hintText,
      this.autovalidateMode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      obscureText: obscureText,
      validator: validator,
      name: name,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: txtBoxColor, width: 1)),
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


  // return TextFormField(
  //     onChanged: onChanged,
  //     keyboardType: keyboardType,
  //     controller: controller,
  //     validator: validator,
  //     obscureText: obscureText,
  //     decoration: InputDecoration(
  //       prefixIcon: prefixIcon,
  //       suffixIcon: suffixIcon,
  //       enabledBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(12),
  //           borderSide: const BorderSide(color: txtBoxColor, width: 1)),
  //       focusedBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(12),
  //           borderSide: const BorderSide(color: txtBoxColor, width: 1)),
  //       hintStyle: TextStyle(
  //           color: greyColor,
  //           fontFamily: fontFamily ?? airbnb,
  //           fontWeight: fontWeight),
  //       hintText: hintText,
  //     ),
  //   );