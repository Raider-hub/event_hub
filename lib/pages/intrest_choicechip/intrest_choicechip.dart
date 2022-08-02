import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/intrest_choicechip/choice_item.dart';
import 'package:event_hub/pages/intrest_choicechip/choices.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';

class ChoiceChipPage extends StatefulWidget {
  const ChoiceChipPage({Key? key}) : super(key: key);

  @override
  State<ChoiceChipPage> createState() => _ChoiceChipPageState();
}

class _ChoiceChipPageState extends State<ChoiceChipPage> {


  List<IntrestChoices> pickedchoices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const MyText(text: 'Select your 5 Interest', size: 26),
          const SizedBox(
            height: 20,
          ),
          GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                ...List.generate(
                    choicesList.length,
                    (index) => ChoiceItem(
                        intrestChoices: choicesList[index],
                        onSelected: (bool value) {
                          if (!value) {
                            pickedchoices.remove(choicesList[index]);
                          }
                          pickedchoices.add(choicesList[index]);

                          setState(() {});
                        }))
              ]),
          CustomButton(
            buttonTxt: 'CONTINUE',
            onPressed: () {
              context.pushRoute(const PickLocationRoute() );
            },
          )
        ],
      ),
    ));
  }
}
