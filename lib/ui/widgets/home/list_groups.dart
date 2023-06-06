import 'package:flutter/material.dart';
import 'package:virt_mnc/ui/widgets/home/group_tile.dart';

class ListGroups extends StatefulWidget {
  const ListGroups({super.key});

  @override
  State<ListGroups> createState() => _ListGroupsState();
}

class _ListGroupsState extends State<ListGroups> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [GroupTile(name: "balls club")],
    );
  }
}
