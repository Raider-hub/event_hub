import 'package:auto_route/auto_route.dart';
import 'package:event_hub/my_custom_icons/event_hub_icons.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomNavPage extends HookWidget {
  const BottomNavPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ExploreRouter(),
        EventRouter(),
        MapRouter(),
        ProfileRouter(),
      ],
      resizeToAvoidBottomInset: false,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          selectedItemColor: primaryColor,
          unselectedItemColor:  const Color(0XFF000000).withOpacity(0.25),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          // showUnselectedLabels: true,
          unselectedLabelStyle:TextStyle( color:  const Color(0XFF000000).withOpacity(0.25)),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(EventHub.compass),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(EventHub.calendar),
              label: 'Event',
            ),
            BottomNavigationBarItem(
              icon: Icon(EventHub.location),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(EventHub.profile),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
