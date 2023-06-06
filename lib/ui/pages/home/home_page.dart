import 'package:flutter/material.dart';
import 'package:virt_mnc/ui/widgets/home/home_app_bar.dart';
import 'package:virt_mnc/ui/widgets/home/list_groups.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [const DrawerHeader(child: Text("this is my drawer"))],
        ),
      ),
      body: ListGroups(),
    );
  }
}
