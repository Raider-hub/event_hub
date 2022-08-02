import 'package:auto_route/auto_route.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({Key? key}) : super(key: key);

  @override
  State<SearchBarPage> createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      backgroundColor: primaryColor,
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      title: IntrinsicHeight(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SvgPicture.asset(
            //   'assets/icons/search.svg',
            //   color: Colors.white,
            // ),
            InkWell(
              onTap: () {
                context.popRoute();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white.withOpacity(0.3),
              ),
            ),

            const SizedBox(
              width: 2,
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              endIndent: 15,
              indent: 15,
            ),
            const SizedBox(
              width: 2,
            ),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 15),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(
                    12,
                  )),
              child: TextFormField(
                autofocus: true,
                cursorColor: Colors.white.withOpacity(0.3),
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.3),
                      fontSize: 20,
                    )),
              ),
            )),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 35,
              width: 87,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(
                    50,
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 2, right: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        height: 23,
                        width: 23,
                        color: const Color(0xffA29EF0),
                        child: const Icon(
                          Icons.filter_list_rounded,
                          color: primaryColor,
                          size: 17,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const MyText(
                      text: 'Filters',
                      size: 14,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // title: ,
    ));
  }
}
