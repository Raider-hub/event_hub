import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/onboard/get_started_button.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreenContents extends StatefulWidget {
  const OnboardScreenContents({Key? key}) : super(key: key);

  @override
  State<OnboardScreenContents> createState() => _OnboardScreenContentsState();
}

class _OnboardScreenContentsState extends State<OnboardScreenContents> {
  bool isLastPage = false;

  final controller = PageController();

  int currentIndex = 0;
  final List contents = [
    {
      'title': ' Explore Upcoming and Nearby Events ',
      'description':
          'In publishing and graphic design, Lorem is a placeholder text commonly',
      'image': 'assets/images/onboard/onboard_screen_one.png'
    },
    {
      'title': ' Web Have Modern Events Calendar Feature',
      'description':
          'In publishing and graphic design, Lorem is a placeholder text commonly',
      'image': 'assets/images/onboard/onboard_screen_two.png'
    },
    {
      'title': 'To Look Up More Events or Activities Nearby By Map',
      'description':
          'In publishing and graphic design, Lorem is a placeholder text commonly',
      'image': 'assets/images/onboard/onboard_screen_three.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView.builder(
        onPageChanged: (index) {
          if (!isLastPage) {
            setState(() => currentIndex = index);
          }
          setState(() => isLastPage = index == 2);
        },
        controller: controller,
        itemCount: contents.length,
        itemBuilder: (context, index) => Column(
          children: [
            Image.asset('${contents[currentIndex]['image']}'),
          ],
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: radiusCircular(48), topRight: radiusCircular(48))),
          height: 300,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                MyText(
                  text: '${contents[currentIndex]['title']}',
                  size: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                  fontFamily: airbnb,
                  lineHeight: 1.55,
                ),
                const SizedBox(
                  height: 18,
                ),
                MyText(
                  text: '${contents[currentIndex]['description']}',
                  size: 16,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  fontFamily: airbnb,
                  lineHeight: 1.67,
                ),
                const SizedBox(
                  height: 42,
                ),
                isLastPage
                    ? GetStartedButton(onPressed: () {
                        // context.router.pushWidget(const SignInPage());
                       context.pushRoute(const SignInRoute());
                      })
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.jumpToPage(2);
                            },
                            child: MyText(
                              fontFamily: airbnb,
                              text: 'Skip',
                              size: 22,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            onDotClicked: (index) => controller.animateToPage(
                                index,
                                duration: const Duration(microseconds: 500),
                                curve: Curves.easeIn),
                            effect: ScrollingDotsEffect(
                                activeDotColor: Colors.white,
                                spacing: 8.0,
                                dotWidth: 8,
                                dotHeight: 8,
                                dotColor: Colors.white.withOpacity(0.2)),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            },
                            child: const MyText(
                              text: 'Next',
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
