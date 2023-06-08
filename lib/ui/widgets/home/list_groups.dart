import 'package:flutter/material.dart';
import 'package:virt_mnc/app/group_data.dart';
import 'package:virt_mnc/ui/widgets/home/group_tile.dart';

class ListGroups extends StatefulWidget {
  final List<GroupData> groupsOfUser;

  const ListGroups({
    super.key,
    this.groupsOfUser = const [],
  });

  @override
  State<ListGroups> createState() => _ListGroupsState();
}

class _ListGroupsState extends State<ListGroups> {
  late List<GroupData> groupsOfUser = widget.groupsOfUser;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groupsOfUser.length,
      itemBuilder: (context, index) {
        GroupData thisGroup = groupsOfUser[index];
        return GroupTile(groupData: thisGroup);
      },
    );
  }
}
