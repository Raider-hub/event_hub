import 'package:event_hub/my_custom_icons/event_hub_icons.dart';
import 'package:event_hub/pages/home/appbar_widget.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

  final List _upcomingEvents = 
   [
        {
          'title': 'International Band Music',
          'image': 'assets/images/international_band.png',
          'location': '36 Guild Street London, UK ',
          'date': '11',
          'month': 'JUNE'
        },
        {
          'title': 'Jo Malone London’s Maloon',
          'image': 'assets/images/running_day.png',
          'location': 'Radius Gallery • Santa Cruz, CA',
          'date': '30',
          'month': 'AUG'
        },

      ];
class ExplorePage extends HookConsumerWidget {
 const ExplorePage({Key? key}) : super(key: key);



  // final List upcomingEvents = [

  // ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final upcomingEventsProvider = ref.watch(_upcomingEvents);

    // List _pages = useMemoized(() => []);

    // useEffect(() {

    // });

    return Scaffold(
      // backgroundColor: const Color(0xffDADADA).withOpacity(0),
      appBar: MyAppBar(
        onPressed: () {
          ZoomDrawer.of(context)!.toggle();
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MyText(
                    text: 'Upcoming Events',
                    size: 20,
                    color: Color(0xff120D26),
                    fontWeight: FontWeight.w500,
                  ),
                  Row(
                    children: const [
                      MyText(
                        text: 'See All',
                        size: 14,
                        color: Color(0xff747688),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Color(0xff747688),
                      ),
                    ],
                  )
                ],
              ),
            ),
    
            SizedBox(
              height: 270,
              child: ListView.builder(
                  itemCount: _upcomingEvents.length,
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Row(
                      children: [
                        // const SizedBox(width: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color(0xff979797).withOpacity(0.06),
                          ),
                          padding: const EdgeInsets.only(
                              left: 12, top: 12, right: 12, bottom: 12),
                          height: 265,
                          width: 245,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    _upcomingEvents[index]['image'],
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      height: 46,
                                      width: 45,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            '10',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Color(
                                                  0xffF0635A,
                                                )),
                                          ),
                                          Text(
                                            _upcomingEvents[index]
                                                ['month'],
                                            style: const TextStyle(
                                                fontSize: 11,
                                                color: Color(
                                                  0xffF0635A,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      height: 30,
                                      width: 30,
                                      child: SvgPicture.asset(
                                        'assets/icons/bookmark_icon.svg',
                                        height: 15,
                                        width: 15,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                width: 220,
                                child: Column(
                                  children: [
                                    Text(
                                      _upcomingEvents[index]['title'],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: 80,
                                          child: ListView.builder(
                                            // padding: const EdgeInsets.only(left: 10),
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 3,
                                            reverse: true,
                                            itemBuilder: (context, index) {
                                              return Align(
                                                widthFactor: 0.5,
                                                // heightFactor: 0.5,
                                                alignment: Alignment.center,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 2)),
                                                  child: const CircleAvatar(
                                                    // radius: 100,
                                                    backgroundColor:
                                                        Colors.black,
                                                    backgroundImage: AssetImage(
                                                      'assets/images/profile_pic_1.jpg',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const MyText(
                                          text: '+20 Going',
                                          size: 12,
                                          color: Color(0xff3F38DD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Icon(
                                            EventHub.location,
                                            color: const Color(0xff716E90)
                                                .withOpacity(0.5),
                                            size: 18,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            _upcomingEvents[index]
                                                ['location'],
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: false,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: const Color(0xff716E90)
                                                    .withOpacity(0.5),
                                                fontFamily: airbnb,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    );
                  })),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    width: 328,
                    decoration: BoxDecoration(
                        color: const Color(0xff00F8FF).withOpacity(0.16),
                        borderRadius: BorderRadius.circular(20)),
                    // child: Stack(),
                  ),
                  Positioned.fill(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/images/invite.png',
                          // fit: BoxFit.cover,
                        )),
                  ),
                  const Positioned(
                      left: 12,
                      top: 20,
                      child: MyText(
                        text: 'Invite your friends',
                        size: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  const Positioned(
                      left: 12,
                      top: 42,
                      child: MyText(
                        text: "Get \$20 for ticket",
                        size: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff484D70),
                      )),
                  Positioned(
                    left: 12,
                    top: 65,
                    child: Container(
                      height: 32,
                      width: 72,
                      decoration: BoxDecoration(
                          color: const Color(0xff00F8FF),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: MyText(
                        text: 'INVITE',
                        size: 14,
                        color: Colors.white,
                      )),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MyText(
                    text: 'Nearby You',
                    size: 20,
                    color: Color(0xff120D26),
                    fontWeight: FontWeight.w500,
                  ),
                  Row(
                    children: const [
                      MyText(
                        text: 'See All',
                        size: 14,
                        color: Color(0xff747688),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Color(0xff747688),
                      ),
                    ],
                  )
                ],
              ),
            ),
    
            // Container(
            // )
          ],
        ),
      ),
    );
  }
}
