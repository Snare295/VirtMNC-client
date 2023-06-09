import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: AutoSizeText("Settings of app"),
      leading: Icon(Icons.settings),
    );
  }
}
