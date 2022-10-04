import 'package:event_hub/pages/home/model/side_nav_items_model/menu_item_model.dart';
import 'package:event_hub/pages/home/side_nav_menu.dart';
import 'package:event_hub/pages/homenavbar/bottom_navbar.dart';
import 'package:event_hub/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HiddenDrawerPage extends HookWidget {
  const HiddenDrawerPage({Key? key}) : super(key: key);
//  List<ScreenHiddenDrawer> _pages = [];

  @override
  Widget build(BuildContext context) {
    //MenuList currentItem = useMemoized(() => MenuLists.bottomNav);

    // final notifier = useListenable<MenuList>(currentItem);


   

    // final setItem = useState<MenuList>(currentItem);

    //  final setItem = useEffect(() {

    //           return null;
    //         }, []);

    // useEffect(() {
    //   _pages = [
    //     ScreenHiddenDrawer(
    //         ItemHiddenMenu(
    //             name: 'HomePage',
    //             baseStyle: const TextStyle(),
    //             selectedStyle: const TextStyle()),
    //         const BottomNavPage()

    //         )
    //   ];
    //   return null;
    // });

    // Widget getScreen() {
    //   switch (currentItem) {
    //     case MenuLists.bottomNav:
    //       return const BottomNavPage();
    //     case MenuLists.profile:
    //       return const ProfilePage();
    //     case MenuLists.message:
    //       return const MessaagePage();
    //     case MenuLists.calender:
    //       return const CalenderPage();
    //     case MenuLists.bookmark:
    //       return const BookmarkPage();
    //     case MenuLists.contactUs:
    //       return const ContactUsPage();
    //     case MenuLists.settings:
    //       return const SettingsPage();
    //     case MenuLists.help:
    //       return const HelpandFaqPage();
    //   }
    //   return const BottomNavPage();
    // }

    return ZoomDrawer(
        menuBackgroundColor: primaryColor,
        borderRadius: 40,
        mainScreenScale: 0.2,
        angle: 0.0,
        shadowLayer1Color: Colors.white.withOpacity(0.06),
        shadowLayer2Color: Colors.white.withOpacity(0.08),
        slideWidth: MediaQuery.of(context).size.width * 0.79,
        showShadow: true,
        moveMenuScreen: false,
        style: DrawerStyle.defaultStyle,
        menuScreen: Builder(
          builder: (context) => const MenuPage(
              // currentItem: currentItem,
              // onSelectedItem: (item) {
              //   currentItem = item;

              //   ZoomDrawer.of(context)!.close();
              // }
              ),
        ),
        mainScreen: const BottomNavPage());
  }
}
