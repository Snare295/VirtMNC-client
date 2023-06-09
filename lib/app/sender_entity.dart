import 'package:flutter/material.dart';

class Sender {
  int id;
  String name;
  String? bio;
  ImageProvider profilePictue;
  bool? admin;

  Sender({
    required this.id,
    required this.name,
    this.bio,
    this.profilePictue = const AssetImage("assets/images/user.png"),
    this.admin = false,
  });
}
