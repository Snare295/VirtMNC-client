import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ConnectionTile extends StatelessWidget {
  const ConnectionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AutoSizeText("Connections"),
      leading: Icon(Icons.near_me_outlined),
    );
  }
}
