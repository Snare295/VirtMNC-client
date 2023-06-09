import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:virt_mnc/app/user_data.dart';
import 'package:virt_mnc/ui/widgets/home/drawer/connection.dart';
import 'package:virt_mnc/ui/widgets/home/drawer/settings.dart';
import 'package:virt_mnc/ui/widgets/home/drawer/user.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: AutoSizeText(UserData().name, minFontSize: 20),
              accountEmail: const SizedBox(),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: UserData().userProfilePicture),
            ),
            const UserSettingsTile(),
            const ConnectionTile(),
            const SettingsTile(),
          ],
        ),
      ),
    );
  }
}
