import 'package:auto_route/auto_route.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

class ProfilePage extends StatelessWidget {
const ProfilePage({Key? key}) : super(key: key);


  final String aboutme =
      'Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase, Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase';
  final List userIntrest = const [
    {
      'title': 'Games Online',
      'color': '0xff6B7AED',
    },
    {
      'title': 'Concert',
      'color': '0xffEE544A',
    },
    {
      'title': 'Music',
      'color': '0xffFF8D5D',
    },
    {
      'title': 'Art',
      'color': '0xff7D67EE',
    },
    {
      'title': 'Movies',
      'color': '0xff29D697',
    },
    {
      'title': 'Others',
      'color': '0xff39D1F2',
    },
  ];


  // Future<bool?> _onBackPressed() async {
  //    context.navigateTo(const HiddenDrawerRouter(children: [HiddenDrawerRoute()]
  //           // VerifyEmailRoute(),
  //           ));
  //    return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: MyText(
            text: 'Profile',
            size: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          //  scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/images/profile_pic_1.jpg"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: MyText(
                text: 'Ashfak Sayem',
                size: 24,
                fontWeight: FontWeight.w500,
              )),
              const SizedBox(
                height: 10,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        MyText(
                          text: '590',
                          size: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        MyText(
                          color: Color(0xff747688),
                          text: 'Following',
                          size: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const VerticalDivider(
                      color: Color(
                        0xffDDDDDD,
                      ),
                      thickness: 1,
                      endIndent: 6,
                      indent: 6,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        MyText(
                          text: '950',
                          size: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        MyText(
                          color: Color(0xff747688),
                          text: 'Followers',
                          size: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    context.pushRoute(const EditProfileRoute());
                    // context.pushRoute(const ProfileRouter(children: [
                    //   // ProfileRoute(),
                    //   EditProfileRoute()
                    // ]));
                  },
                  child: Container(
                    height: 50,
                    width: 154,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2, color: const Color(0xff5669FF))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            'assets/images/edit_profile_icon.svg'),
                        const SizedBox(
                          width: 10,
                        ),
                        const MyText(
                            text: 'Edit Profile',
                            size: 14,
                            color: Color(0xff5669FF))
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: MyText(
                      text: 'About Me',
                      size: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ReadMoreText(
                    aboutme,
                    trimLength: 144,
                    colorClickableText: primaryColor,
                    trimMode: TrimMode.Length,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    style: const TextStyle(
                        fontFamily: airbnb,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.5,
                        height: 1.4),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MyText(
                        text: 'Interest',
                        size: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: primaryColor.withOpacity(0.1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/edit.svg',
                                fit: BoxFit.scaleDown,
                                color: primaryColor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const MyText(
                                text: 'CHANGE',
                                size: 10,
                                color: primaryColor,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 5,
                  runSpacing: 6,
                  // alignment: WrapAlignment.start,

                  children: [
                    ...List.generate(userIntrest.length, (index) {
                      int colors = int.parse(userIntrest[index]['color']);
                      return Container(
                        decoration: BoxDecoration(
                            color: Color(colors),
                            borderRadius: BorderRadius.circular(20)),
                        // padding: const EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 7, top: 7),
                          child: MyText(
                            text: userIntrest[index]['title'],
                            size: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      );
                    })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
