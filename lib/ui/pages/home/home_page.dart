import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:virt_mnc/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
          onPressed: () => logger.i("Pressed profile picture button"),
          icon: Icon(Icons.face),
        ),
      ),
    );
  }
}
