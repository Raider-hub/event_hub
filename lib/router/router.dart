import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/forget_password/forget_password.dart';
import 'package:event_hub/pages/forget_password/verification.dart';
import 'package:event_hub/pages/home/events_page.dart';
import 'package:event_hub/pages/home/explore_page.dart';
import 'package:event_hub/pages/home/profile_page/edit_profile_page.dart';
import 'package:event_hub/pages/home/profile_page/profile_page.dart';
import 'package:event_hub/pages/home/searchbar.dart';
import 'package:event_hub/pages/home/side_navbar_pages/bookmark.dart';
import 'package:event_hub/pages/home/side_navbar_pages/calender_page.dart';
import 'package:event_hub/pages/home/side_navbar_pages/contact_us_page.dart';
import 'package:event_hub/pages/home/side_navbar_pages/help_and_faq_page.dart';
import 'package:event_hub/pages/home/side_navbar_pages/hidden_drawer.dart';
import 'package:event_hub/pages/home/side_navbar_pages/message_page.dart';
import 'package:event_hub/pages/home/side_navbar_pages/settings_page.dart';
import 'package:event_hub/pages/homenavbar/bottom_navbar.dart';
import 'package:event_hub/pages/intrest_choicechip/intrest_choicechip.dart';
import 'package:event_hub/pages/map/map.dart';
import 'package:event_hub/pages/map/pick_location.dart';

import 'package:event_hub/pages/onboard/onboard_page.dart';
import 'package:event_hub/pages/sign_in/sign_in.dart';
import 'package:event_hub/pages/signup/sign_up.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: OnboardPage, path: '/onboard', initial: true),
  AutoRoute(
    page: PickLocationPage,
    path: 'picklocation',
  ),
  AutoRoute(
      page: EmptyRouterScreen,
      name: 'HiddenDrawerRouter',
      path: '/hiddenDrawer',
     
      children: [
        AutoRoute(
          page: HiddenDrawerPage,
          path: 'hiddenRouterPage',
          children: [
             AutoRoute(
      path: "explore",
      name: "ExploreRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: ExplorePage),
      ],
    ),
    AutoRoute(
      path: "event",
      name: "EventRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: EventsPage),
      ],
    ),
    AutoRoute(
      path: "map",
      name: "mapRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: MapPage),
      ],
    ),
    AutoRoute(
      path: "profile",
      name: "ProfileRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: ProfilePage),
        AutoRoute(path: 'editprofile', page: EditProfilePage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),]
        ),
        AutoRoute(
          page: MessaagePage,
          path: 'msg',
        ),
        AutoRoute(
          page: CalenderPage,
          path: 'calender',
        ),
        AutoRoute(
          page: BookmarkPage,
          path: 'bookmark',
        ),
        AutoRoute(
          page: ContactUsPage,
          path: 'contactUs',
        ),
        AutoRoute(
          page: SettingsPage,
          path: 'settings',
        ),
        AutoRoute(
          page: HelpandFaqPage,
          path: 'help',
        ),
      ]),
  AutoRoute(
    page: SignInPage,
    path: 'Signin',
  ),
  AutoRoute(
      page: EmptyRouterPage,
      path: '/passsword',
      name: "ForgetPwRouter",
      children: [
        AutoRoute(
          page: ForgetPasswordPage,
          path: 'forgetpw',
        ),
        AutoRoute(
          page: VerifyEmailPage,
          path: 'verifyemail',
        )
      ]),
  // AutoRoute(
  //   page: MapPage,
  //   path: 'mapscreen',
  // ),
  AutoRoute(
    page: SignUpPage,
    path: 'signup',
  ),
  AutoRoute(
    page: ChoiceChipPage,
    path: 'choicechip',
  ),
  AutoRoute(path: 'SearchPage', page: SearchBarPage),
  // AutoRoute(
  //   page: BottomNavPage,
  //   path: 'bottomnavbar',
  // ),
  // AutoRoute(path: "", name: "BottomNavRouter", page: BottomNavPage, children: [
   
  // ]),
])
class $AppRouter {}
