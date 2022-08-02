import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/home/model/side_nav_items_model/menu_item_model.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nb_utils/nb_utils.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Future<bool?> _onBackPressed() async {
    ZoomDrawer.of(context)!.close();
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool? result = await _onBackPressed();
        result ??= false;
        return result;
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 40),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/images/profile_pic_1.jpg"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: MyText(
                text: 'Ashfak Sayem',
                size: 24,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            // ...MenuLists.all
            //     .map((item) =>
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: ListTileTheme(
                selectedColor: Colors.white,
                selectedTileColor: Colors.black12,
                child: ListTile(
                  minLeadingWidth: 20,
                  leading: Image.asset(
                    'assets/icons/menu_items_icons/profile.png',
                    color: Colors.white,
                  ),
                  title: const MyText(
                    text: 'My Profile',
                    color: Colors.white,
                    size: 18,
                  ),
                  onTap: () {
                    context
                        .navigateTo(const HiddenDrawerRoute(children: [
                          ProfileRouter(children: [ProfileRoute()])
                        ]))
                        .then((value) => ZoomDrawer.of(context)!.close());
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: ListTileTheme(
                selectedColor: Colors.white,
                selectedTileColor: Colors.black12,
                child: ListTile(
                  minLeadingWidth: 20,
                  leading: Image.asset(
                    'assets/icons/menu_items_icons/message.png',
                    color: Colors.white,
                  ),
                  title: const MyText(
                    text: 'Messages',
                    color: Colors.white,
                    size: 18,
                  ),
                  onTap: () {
                    context
                        .pushRoute(const HiddenDrawerRouter(
                            children: [MessaageRoute()]))
                        .then((value) => ZoomDrawer.of(context)!.close());
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: ListTileTheme(
                selectedColor: Colors.white,
                selectedTileColor: Colors.black12,
                child: ListTile(
                  minLeadingWidth: 20,
                  leading: Image.asset(
                    'assets/icons/menu_items_icons/calender.png',
                    color: Colors.white,
                  ),
                  title: const MyText(
                    text: 'Calender',
                    color: Colors.white,
                    size: 18,
                  ),
                  onTap: () {
                    context
                        .pushRoute(const HiddenDrawerRouter(
                            children: [CalenderRoute()]))
                        .then((value) => ZoomDrawer.of(context)!.close());
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: ListTileTheme(
                selectedColor: Colors.white,
                selectedTileColor: Colors.black12,
                child: ListTile(
                  minLeadingWidth: 20,
                  leading: Image.asset(
                    'assets/icons/menu_items_icons/bookmark.png',
                    color: Colors.white,
                  ),
                  title: const MyText(
                    text: 'Bookmark',
                    color: Colors.white,
                    size: 18,
                  ),
                  onTap: () async {
                    await context
                        .pushRoute(const HiddenDrawerRouter(
                            children: [BookmarkRoute()]))
                        .then((value) => ZoomDrawer.of(context)!.close());
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: ListTileTheme(
                selectedColor: Colors.white,
                selectedTileColor: Colors.black12,
                child: ListTile(
                  minLeadingWidth: 20,
                  leading: Image.asset(
                    'assets/icons/menu_items_icons/mail.png',
                    color: Colors.white,
                  ),
                  title: const MyText(
                    text: 'Contact Us',
                    color: Colors.white,
                    size: 18,
                  ),
                  onTap: () {
                    context
                        .pushRoute(const HiddenDrawerRouter(
                            children: [ContactUsRoute()]))
                        .then((value) => ZoomDrawer.of(context)!.close());
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: ListTileTheme(
                selectedColor: Colors.white,
                selectedTileColor: Colors.black12,
                child: ListTile(
                  minLeadingWidth: 20,
                  leading: Image.asset(
                    'assets/icons/menu_items_icons/settings.png',
                    color: Colors.white,
                  ),
                  title: const MyText(
                    text: 'Settings',
                    color: Colors.white,
                    size: 18,
                  ),
                  onTap: () {
                    context
                        .pushRoute(const HiddenDrawerRouter(
                            children: [SettingsRoute()]))
                        .then((value) => ZoomDrawer.of(context)!.close());
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: ListTileTheme(
                selectedColor: Colors.white,
                selectedTileColor: Colors.black12,
                child: ListTile(
                  minLeadingWidth: 20,
                  leading: Image.asset(
                    'assets/icons/menu_items_icons/help.png',
                    color: Colors.white,
                  ),
                  title: const MyText(
                    text: 'Helps & FAQs',
                    color: Colors.white,
                    size: 18,
                  ),
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    context.pushRoute(const HiddenDrawerRouter(
                        children: [HelpandFaqRoute()]));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: ListTileTheme(
                selectedColor: Colors.white,
                selectedTileColor: Colors.black12,
                child: ListTile(
                  minLeadingWidth: 20,
                  leading: Image.asset(
                    'assets/icons/menu_items_icons/logout.png',
                    color: Colors.white,
                  ),
                  title: const MyText(
                    text: 'Sign Out',
                    color: Colors.white,
                    size: 18,
                  ),
                  onTap: () async {
                    ZoomDrawer.of(context)!.close();

                    showLogOutDialog(context);
                    // context
                    //     .pushRoute(const HiddenDrawerRouter(
                    //         children: [HelpandFaqRoute()]))
                    //     .then((value) => ZoomDrawer.of(context)!.close());
                  },
                ),
              ),
            ),

            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(8)),
                height: 46,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset('assets/icons/upgrade_icon.svg'),
                        const MyText(
                          text: 'Upgrade Pro',
                          size: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff00F8FF),
                        )
                      ]),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }

  void showLogOutDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        finish(context);
        // context.popRoute();
        // Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Sign Out"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Sign Out"),
      content: const Text(
          "Signing out will remove all your EventHub data from this device"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

// showConfirmDialog(context, 'Log Out');
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
