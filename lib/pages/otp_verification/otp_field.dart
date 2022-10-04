import 'package:event_hub/widgets/constants.dart';
import 'package:flutter/material.dart';

class OtpTextField extends StatelessWidget {
  final bool first, last;
  final TextEditingController texEditingController;
  const OtpTextField({Key? key, required this.first, required this.last,  required this.texEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: TextFormField(
        
        controller: texEditingController,
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          hintText: '—',
          hintStyle: const TextStyle(color: Color(0XFFDADADA)),
          counter: const Offstage(),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Color(0XFFE4DFDF)),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: primaryColor),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
