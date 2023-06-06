import 'package:flutter/material.dart';
import 'package:virt_mnc/app/user_data.dart';
import 'package:virt_mnc/main.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HomeAppBarState extends State<HomeAppBar> {
  var user = UserData();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink,
      leading: IconButton(
        onPressed: () {
          logger.i("Pressed profile picture button");
          Scaffold.of(context).openDrawer();
        },
        icon: CircleAvatar(
          radius: 40,
          backgroundImage: user.userProfilePicture,
        ),
      ),
    );
  }
}
