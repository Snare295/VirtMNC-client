import 'package:flutter/material.dart';

class ListGroups extends StatefulWidget {
  const ListGroups({super.key});

  @override
  State<ListGroups> createState() => _ListGroupsState();
}

class _ListGroupsState extends State<ListGroups> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.black,
          height: 200,
        )
      ],
    );
  }
}
