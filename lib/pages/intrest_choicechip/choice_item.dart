import 'package:event_hub/pages/intrest_choicechip/choices.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';

class ChoiceItem extends StatefulWidget {
  final IntrestChoices intrestChoices;
  final ValueChanged<bool> onSelected;
  const ChoiceItem(
      {Key? key, required this.intrestChoices, required this.onSelected})
      : super(key: key);

  @override
  State<ChoiceItem> createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (() => setState(() {
                _isSelected = !_isSelected;
              })),
          child: AnimatedContainer(
            duration: const Duration(microseconds: 400),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: _isSelected == true
                  ? Border.all(
                      width: 2,
                      color: const Color(0xff5669FF),
                    )
                  : null,
            ),
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xff9C63CD).withOpacity(0.1),
              ),
              child: Image.asset(
                widget.intrestChoices.image,
                scale: 0.8,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        MyText(text: widget.intrestChoices.title, size: 18),
      ],
    );
  }
}
