import 'package:auto_route/auto_route.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {

   final VoidCallback onPressed;
  @override
  Size get preferredSize => const Size.fromHeight(200);
  const MyAppBar({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String myLocation = 'New York, USA';
    return PreferredSize(
      preferredSize: const Size.fromHeight(200),
      child: Stack(
        children: [
          Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: const Color(0xff4A43EC),
                toolbarHeight: 179,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(33),
                  ),
                ),
                flexibleSpace: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: onPressed,
                              icon: SvgPicture.asset('assets/icons/more.svg')),
                            Column(
                              children: [
                                MyText(
                                  text: 'Current Location',
                                  size: 14,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                                MyText(
                                  text: myLocation,
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            SvgPicture.asset('assets/icons/notification.svg'),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/search.svg',
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                                endIndent: 6,
                                indent: 6,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                        context.pushRoute(const SearchBarRoute());
                                    },
                                child: Text(
                                  'Search...',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white.withOpacity(0.3),
                                  ),

                                  // decoration: InputDecoration(
                                  //     border: InputBorder.none,
                                  //     hintText:
                                  //     hintStyle: TextStyle(
                                  //        ))
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
                                  padding:
                                      const EdgeInsets.only(left: 2, right: 2),
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
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              padding: const EdgeInsets.only(left: 18, right: 18),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 42,
                  width: 106,
                  decoration: BoxDecoration(
                      color: const Color(0xffF0635A),
                      borderRadius: BorderRadius.circular(
                        30,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/sports_icon.svg'),
                      const SizedBox(
                        width: 8,
                      ),
                      const MyText(
                        text: 'Sports',
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 42,
                  width: 106,
                  decoration: BoxDecoration(
                      color: const Color(0xffF59762),
                      borderRadius: BorderRadius.circular(
                        30,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/music_icon.svg'),
                      const SizedBox(
                        width: 8,
                      ),
                      const MyText(
                        text: 'Music',
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 42,
                  width: 106,
                  decoration: BoxDecoration(
                      color: const Color(0xff29D697),
                      borderRadius: BorderRadius.circular(
                        30,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/food_icon.svg'),
                      const SizedBox(
                        width: 8,
                      ),
                      const MyText(
                        text: 'Food',
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 42,
                  width: 106,
                  decoration: BoxDecoration(
                      color: const Color(0xff46CDFB),
                      borderRadius: BorderRadius.circular(
                        30,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/art_icon.svg'),
                      const SizedBox(
                        width: 8,
                      ),
                      const MyText(
                        text: 'Art',
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
