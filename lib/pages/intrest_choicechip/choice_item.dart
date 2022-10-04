import 'package:event_hub/pages/intrest_choicechip/choices.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ChoiceItem extends HookWidget {
  final IntrestChoices intrestChoices;
  final ValueChanged<bool> onSelected;
  const ChoiceItem(
      {Key? key, required this.intrestChoices, required this.onSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isSelected = useState(false);

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _isSelected.value = !_isSelected.value;

            onSelected(_isSelected.value);


          } ,
          child: AnimatedContainer(
            duration: const Duration(microseconds: 400),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: _isSelected.value == true
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
                intrestChoices.image,
                scale: 0.8,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        MyText(text: intrestChoices.title, size: 18),
      ],
    );
  }
}
