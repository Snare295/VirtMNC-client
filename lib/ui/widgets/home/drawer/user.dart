import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UserSettingsTile extends StatelessWidget {
  const UserSettingsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AutoSizeText("User settings"),
      leading: Icon(Icons.manage_accounts),
    );
  }
}
