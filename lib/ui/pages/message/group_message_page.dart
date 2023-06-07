import 'package:flutter/material.dart';
import 'package:virt_mnc/ui/widgets/message/group/group_app_bar.dart';
import 'package:virt_mnc/ui/widgets/message/group/group_list_view.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GroupMessageAppBar(),
      body: GroupMessageListView(),
    );
  }
}

