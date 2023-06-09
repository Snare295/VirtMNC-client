import 'package:flutter/material.dart';
import 'package:virt_mnc/app/group_data.dart';
import 'package:virt_mnc/app/message_data.dart';
import 'package:virt_mnc/app/sender_entity.dart';
import 'package:virt_mnc/ui/widgets/home/drawer.dart';
import 'package:virt_mnc/ui/widgets/home/home_app_bar.dart';
import 'package:virt_mnc/ui/widgets/home/list_groups.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: HomeDrawer(),
      body: ListGroups(groupsOfUser: [
        GroupData(),
        GroupData(
          name: "cringe",
          members: {
            Sender(id: 1, name: "Valer"),
          },
          messages: [
            Message(
              20,
              "This is test",
              Sender(id: 1, name: "Valer"),
            ),
            Message(21, "This is also test", Sender(id: 2, name: "John"))
          ],
        )
      ]),
    );
  }
}
