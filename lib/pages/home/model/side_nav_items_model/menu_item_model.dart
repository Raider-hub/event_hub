class MenuList {
  final String title;
  final String svgPicture;

  const MenuList(
    this.title,
    this.svgPicture,
  );
}

class MenuLists {
  static const bottomNav = MenuList('', '');

  static const profile =
      MenuList('My Profile', 'assets/icons/menu_items_icons/profile.png');
  static const message =
      MenuList('Message', 'assets/icons/menu_items_icons/message.png');
  static const calender =
      MenuList('Calender', 'assets/icons/menu_items_icons/calender.png');
  static const bookmark =
      MenuList('Bookmark', 'assets/icons/menu_items_icons/bookmark.png');
  static const contactUs =
      MenuList('Contact Us', 'assets/icons/menu_items_icons/mail.png');
  static const settings =
      MenuList('Settings', 'assets/icons/menu_items_icons/settings.png');
  static const help =
      MenuList('Helps & FAQs', 'assets/icons/menu_items_icons/help.png');
  static const signOut =
      MenuList('Sign Out', 'assets/icons/menu_items_icons/logout.png');

  static const all = <MenuList>[
    profile,
    message,
    calender,
    bookmark,
    contactUs,
    settings,
    help,
    signOut
  ];
}
