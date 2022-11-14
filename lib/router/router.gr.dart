// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:event_hub/pages/forget_password/forget_password_otp_page.dart'
    as _i22;
import 'package:event_hub/pages/forget_password/forget_password_page.dart'
    as _i20;
import 'package:event_hub/pages/forget_password/new_password_page.dart' as _i23;
import 'package:event_hub/pages/forget_password/password_change_cornfimation_page.dart'
    as _i24;
import 'package:event_hub/pages/home/events_page.dart' as _i16;
import 'package:event_hub/pages/home/explore_page.dart' as _i15;
import 'package:event_hub/pages/home/profile_page/edit_profile_page.dart'
    as _i19;
import 'package:event_hub/pages/home/profile_page/profile_page.dart' as _i18;
import 'package:event_hub/pages/home/searchbar.dart' as _i7;
import 'package:event_hub/pages/home/side_navbar_pages/bookmark.dart' as _i11;
import 'package:event_hub/pages/home/side_navbar_pages/calender_page.dart'
    as _i10;
import 'package:event_hub/pages/home/side_navbar_pages/contact_us_page.dart'
    as _i12;
import 'package:event_hub/pages/home/side_navbar_pages/help_and_faq_page.dart'
    as _i14;
import 'package:event_hub/pages/home/side_navbar_pages/hidden_drawer.dart'
    as _i8;
import 'package:event_hub/pages/home/side_navbar_pages/message_page.dart'
    as _i9;
import 'package:event_hub/pages/home/side_navbar_pages/settings_page.dart'
    as _i13;
import 'package:event_hub/pages/intrest_choicechip/intrest_choicechip.dart'
    as _i6;
import 'package:event_hub/pages/map/map.dart' as _i17;
import 'package:event_hub/pages/map/pick_location.dart' as _i2;
import 'package:event_hub/pages/onboard/onboard_page.dart' as _i1;
import 'package:event_hub/pages/otp_verification/verrify_otp_page.dart' as _i21;
import 'package:event_hub/pages/sign_in/sign_in.dart' as _i4;
import 'package:event_hub/pages/signup/sign_up.dart' as _i5;
import 'package:flutter/material.dart' as _i25;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i25.GlobalKey<_i25.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    OnboardRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.OnboardPage());
    },
    PickLocationRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.PickLocationPage());
    },
    HiddenDrawerRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterScreen());
    },
    SignInRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.SignInPage());
    },
    ForgetPwRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    SignUpRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.SignUpPage());
    },
    ChoiceChipRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.ChoiceChipPage());
    },
    SearchBarRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.SearchBarPage());
    },
    HiddenDrawerRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.HiddenDrawerPage());
    },
    MessaageRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.MessaagePage());
    },
    CalenderRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i10.CalenderPage());
    },
    BookmarkRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i11.BookmarkPage());
    },
    ContactUsRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i12.ContactUsPage());
    },
    SettingsRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i13.SettingsPage());
    },
    HelpandFaqRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i14.HelpandFaqPage());
    },
    ExploreRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    EventRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    MapRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    ExploreRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i15.ExplorePage());
    },
    EventsRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i16.EventsPage());
    },
    MapRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i17.MapPage());
    },
    ProfileRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i18.ProfilePage());
    },
    EditProfileRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i19.EditProfilePage());
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i20.ForgetPasswordPage());
    },
    VerifyEmailRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyEmailRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i21.VerifyEmailPage(args.userEmail, key: args.key));
    },
    VerifyPasswordOtpRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyPasswordOtpRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i22.VerifyPasswordOtpPage(args.userEmail, key: args.key));
    },
    NewPasswordRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i23.NewPasswordPage());
    },
    PasswordChangeDoneRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i24.PasswordChangeDonePage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/onboard', fullMatch: true),
        _i3.RouteConfig(OnboardRoute.name, path: '/onboard'),
        _i3.RouteConfig(PickLocationRoute.name, path: 'picklocation'),
        _i3.RouteConfig(HiddenDrawerRouter.name,
            path: '/hiddenDrawer',
            children: [
              _i3.RouteConfig(HiddenDrawerRoute.name,
                  path: 'hiddenRouterPage',
                  parent: HiddenDrawerRouter.name,
                  children: [
                    _i3.RouteConfig(ExploreRouter.name,
                        path: 'explore',
                        parent: HiddenDrawerRoute.name,
                        children: [
                          _i3.RouteConfig(ExploreRoute.name,
                              path: '', parent: ExploreRouter.name)
                        ]),
                    _i3.RouteConfig(EventRouter.name,
                        path: 'event',
                        parent: HiddenDrawerRoute.name,
                        children: [
                          _i3.RouteConfig(EventsRoute.name,
                              path: '', parent: EventRouter.name)
                        ]),
                    _i3.RouteConfig(MapRouter.name,
                        path: 'map',
                        parent: HiddenDrawerRoute.name,
                        children: [
                          _i3.RouteConfig(MapRoute.name,
                              path: '', parent: MapRouter.name)
                        ]),
                    _i3.RouteConfig(ProfileRouter.name,
                        path: 'profile',
                        parent: HiddenDrawerRoute.name,
                        children: [
                          _i3.RouteConfig(ProfileRoute.name,
                              path: '', parent: ProfileRouter.name),
                          _i3.RouteConfig(EditProfileRoute.name,
                              path: 'editprofile', parent: ProfileRouter.name),
                          _i3.RouteConfig('*#redirect',
                              path: '*',
                              parent: ProfileRouter.name,
                              redirectTo: '',
                              fullMatch: true)
                        ])
                  ]),
              _i3.RouteConfig(MessaageRoute.name,
                  path: 'msg', parent: HiddenDrawerRouter.name),
              _i3.RouteConfig(CalenderRoute.name,
                  path: 'calender', parent: HiddenDrawerRouter.name),
              _i3.RouteConfig(BookmarkRoute.name,
                  path: 'bookmark', parent: HiddenDrawerRouter.name),
              _i3.RouteConfig(ContactUsRoute.name,
                  path: 'contactUs', parent: HiddenDrawerRouter.name),
              _i3.RouteConfig(SettingsRoute.name,
                  path: 'settings', parent: HiddenDrawerRouter.name),
              _i3.RouteConfig(HelpandFaqRoute.name,
                  path: 'help', parent: HiddenDrawerRouter.name)
            ]),
        _i3.RouteConfig(SignInRoute.name, path: 'Signin'),
        _i3.RouteConfig(ForgetPwRouter.name, path: '/passsword', children: [
          _i3.RouteConfig(ForgetPasswordRoute.name,
              path: 'forgetpw', parent: ForgetPwRouter.name),
          _i3.RouteConfig(VerifyEmailRoute.name,
              path: 'verifyemail', parent: ForgetPwRouter.name),
          _i3.RouteConfig(VerifyPasswordOtpRoute.name,
              path: 'verifypasswordemail', parent: ForgetPwRouter.name),
          _i3.RouteConfig(NewPasswordRoute.name,
              path: 'newpasswordpage', parent: ForgetPwRouter.name),
          _i3.RouteConfig(PasswordChangeDoneRoute.name,
              path: 'newpasswordpage', parent: ForgetPwRouter.name)
        ]),
        _i3.RouteConfig(SignUpRoute.name, path: 'signup'),
        _i3.RouteConfig(ChoiceChipRoute.name, path: 'choicechip'),
        _i3.RouteConfig(SearchBarRoute.name, path: 'SearchPage')
      ];
}

/// generated route for
/// [_i1.OnboardPage]
class OnboardRoute extends _i3.PageRouteInfo<void> {
  const OnboardRoute() : super(OnboardRoute.name, path: '/onboard');

  static const String name = 'OnboardRoute';
}

/// generated route for
/// [_i2.PickLocationPage]
class PickLocationRoute extends _i3.PageRouteInfo<void> {
  const PickLocationRoute()
      : super(PickLocationRoute.name, path: 'picklocation');

  static const String name = 'PickLocationRoute';
}

/// generated route for
/// [_i3.EmptyRouterScreen]
class HiddenDrawerRouter extends _i3.PageRouteInfo<void> {
  const HiddenDrawerRouter({List<_i3.PageRouteInfo>? children})
      : super(HiddenDrawerRouter.name,
            path: '/hiddenDrawer', initialChildren: children);

  static const String name = 'HiddenDrawerRouter';
}

/// generated route for
/// [_i4.SignInPage]
class SignInRoute extends _i3.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: 'Signin');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ForgetPwRouter extends _i3.PageRouteInfo<void> {
  const ForgetPwRouter({List<_i3.PageRouteInfo>? children})
      : super(ForgetPwRouter.name,
            path: '/passsword', initialChildren: children);

  static const String name = 'ForgetPwRouter';
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpRoute extends _i3.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'signup');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i6.ChoiceChipPage]
class ChoiceChipRoute extends _i3.PageRouteInfo<void> {
  const ChoiceChipRoute() : super(ChoiceChipRoute.name, path: 'choicechip');

  static const String name = 'ChoiceChipRoute';
}

/// generated route for
/// [_i7.SearchBarPage]
class SearchBarRoute extends _i3.PageRouteInfo<void> {
  const SearchBarRoute() : super(SearchBarRoute.name, path: 'SearchPage');

  static const String name = 'SearchBarRoute';
}

/// generated route for
/// [_i8.HiddenDrawerPage]
class HiddenDrawerRoute extends _i3.PageRouteInfo<void> {
  const HiddenDrawerRoute({List<_i3.PageRouteInfo>? children})
      : super(HiddenDrawerRoute.name,
            path: 'hiddenRouterPage', initialChildren: children);

  static const String name = 'HiddenDrawerRoute';
}

/// generated route for
/// [_i9.MessaagePage]
class MessaageRoute extends _i3.PageRouteInfo<void> {
  const MessaageRoute() : super(MessaageRoute.name, path: 'msg');

  static const String name = 'MessaageRoute';
}

/// generated route for
/// [_i10.CalenderPage]
class CalenderRoute extends _i3.PageRouteInfo<void> {
  const CalenderRoute() : super(CalenderRoute.name, path: 'calender');

  static const String name = 'CalenderRoute';
}

/// generated route for
/// [_i11.BookmarkPage]
class BookmarkRoute extends _i3.PageRouteInfo<void> {
  const BookmarkRoute() : super(BookmarkRoute.name, path: 'bookmark');

  static const String name = 'BookmarkRoute';
}

/// generated route for
/// [_i12.ContactUsPage]
class ContactUsRoute extends _i3.PageRouteInfo<void> {
  const ContactUsRoute() : super(ContactUsRoute.name, path: 'contactUs');

  static const String name = 'ContactUsRoute';
}

/// generated route for
/// [_i13.SettingsPage]
class SettingsRoute extends _i3.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i14.HelpandFaqPage]
class HelpandFaqRoute extends _i3.PageRouteInfo<void> {
  const HelpandFaqRoute() : super(HelpandFaqRoute.name, path: 'help');

  static const String name = 'HelpandFaqRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ExploreRouter extends _i3.PageRouteInfo<void> {
  const ExploreRouter({List<_i3.PageRouteInfo>? children})
      : super(ExploreRouter.name, path: 'explore', initialChildren: children);

  static const String name = 'ExploreRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class EventRouter extends _i3.PageRouteInfo<void> {
  const EventRouter({List<_i3.PageRouteInfo>? children})
      : super(EventRouter.name, path: 'event', initialChildren: children);

  static const String name = 'EventRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class MapRouter extends _i3.PageRouteInfo<void> {
  const MapRouter({List<_i3.PageRouteInfo>? children})
      : super(MapRouter.name, path: 'map', initialChildren: children);

  static const String name = 'MapRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ProfileRouter extends _i3.PageRouteInfo<void> {
  const ProfileRouter({List<_i3.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i15.ExplorePage]
class ExploreRoute extends _i3.PageRouteInfo<void> {
  const ExploreRoute() : super(ExploreRoute.name, path: '');

  static const String name = 'ExploreRoute';
}

/// generated route for
/// [_i16.EventsPage]
class EventsRoute extends _i3.PageRouteInfo<void> {
  const EventsRoute() : super(EventsRoute.name, path: '');

  static const String name = 'EventsRoute';
}

/// generated route for
/// [_i17.MapPage]
class MapRoute extends _i3.PageRouteInfo<void> {
  const MapRoute() : super(MapRoute.name, path: '');

  static const String name = 'MapRoute';
}

/// generated route for
/// [_i18.ProfilePage]
class ProfileRoute extends _i3.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i19.EditProfilePage]
class EditProfileRoute extends _i3.PageRouteInfo<void> {
  const EditProfileRoute() : super(EditProfileRoute.name, path: 'editprofile');

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [_i20.ForgetPasswordPage]
class ForgetPasswordRoute extends _i3.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(ForgetPasswordRoute.name, path: 'forgetpw');

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i21.VerifyEmailPage]
class VerifyEmailRoute extends _i3.PageRouteInfo<VerifyEmailRouteArgs> {
  VerifyEmailRoute({required String userEmail, _i25.Key? key})
      : super(VerifyEmailRoute.name,
            path: 'verifyemail',
            args: VerifyEmailRouteArgs(userEmail: userEmail, key: key));

  static const String name = 'VerifyEmailRoute';
}

class VerifyEmailRouteArgs {
  const VerifyEmailRouteArgs({required this.userEmail, this.key});

  final String userEmail;

  final _i25.Key? key;

  @override
  String toString() {
    return 'VerifyEmailRouteArgs{userEmail: $userEmail, key: $key}';
  }
}

/// generated route for
/// [_i22.VerifyPasswordOtpPage]
class VerifyPasswordOtpRoute
    extends _i3.PageRouteInfo<VerifyPasswordOtpRouteArgs> {
  VerifyPasswordOtpRoute({required String userEmail, _i25.Key? key})
      : super(VerifyPasswordOtpRoute.name,
            path: 'verifypasswordemail',
            args: VerifyPasswordOtpRouteArgs(userEmail: userEmail, key: key));

  static const String name = 'VerifyPasswordOtpRoute';
}

class VerifyPasswordOtpRouteArgs {
  const VerifyPasswordOtpRouteArgs({required this.userEmail, this.key});

  final String userEmail;

  final _i25.Key? key;

  @override
  String toString() {
    return 'VerifyPasswordOtpRouteArgs{userEmail: $userEmail, key: $key}';
  }
}

/// generated route for
/// [_i23.NewPasswordPage]
class NewPasswordRoute extends _i3.PageRouteInfo<void> {
  const NewPasswordRoute()
      : super(NewPasswordRoute.name, path: 'newpasswordpage');

  static const String name = 'NewPasswordRoute';
}

/// generated route for
/// [_i24.PasswordChangeDonePage]
class PasswordChangeDoneRoute extends _i3.PageRouteInfo<void> {
  const PasswordChangeDoneRoute()
      : super(PasswordChangeDoneRoute.name, path: 'newpasswordpage');

  static const String name = 'PasswordChangeDoneRoute';
}
