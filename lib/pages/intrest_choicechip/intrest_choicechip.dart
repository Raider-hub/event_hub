import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/intrest_choicechip/choice_item.dart';
import 'package:event_hub/pages/intrest_choicechip/choices.dart';
import 'package:event_hub/pages/intrest_choicechip/provider/interest_choice_notifier.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/custom_snackbar.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// List<IntrestChoices> pickedchoices = [];

class ChoiceChipPage extends HookConsumerWidget {
  const ChoiceChipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<IntrestChoices> pickedchoices = useMemoized(() => []);

    // ref.listen

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const MyText(text: 'Select your 4 Interest', size: 26),
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
                          if (value) {
                            pickedchoices.add(choicesList[index]);
                          } else {
                            pickedchoices.remove(choicesList[index]);
                          }

                          // mybool.value = !mybool.value;
                        }))
              ]),
          CustomButton(
            buttonTxt: 'CONTINUE',
            onPressed: () {
              final selectedChoices =
                  pickedchoices.map((data) => data.id).toList();
  
              if (selectedChoices.length <4 ) {
                MyCustomSnackBar.warning(
                    message: 'Select atleast 4 interest', context: context);
              } else{

                ref.read(interestChoiceProvider.notifier).addInterest(choices: selectedChoices);
                 print(selectedChoices);
                   context.pushRoute(const PickLocationRoute() );


              }

           
              
            },
          )
        ],
      ),
    ));
  }
}
