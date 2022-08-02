import 'package:auto_route/auto_route.dart';
import 'package:event_hub/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -5,
        leading: IconButton(
          onPressed: (() => context.router.pop()),
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            fit: BoxFit.scaleDown,
          ),),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const MyText(
          text: 'Edit Profile',
          size: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
