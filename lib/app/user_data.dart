import 'package:flutter/material.dart';
import 'package:virt_mnc/main.dart';

///Singleton of where UserData is stored like avatar, name etc.
///Store only user specific data, app-related store in other singletons
class UserData {
  static final UserData _instance = UserData._internals();
  factory UserData() {
    return _instance;
  }
  UserData._internals();

  static String? _name;
  static AssetImage? _userProfilePicture;
  static const AssetImage _standartProfilePicture =
      AssetImage("assets/images/user.png");

  AssetImage get userProfilePicture =>
      _userProfilePicture ?? _standartProfilePicture;
  set userProfilePicture(AssetImage e) => _userProfilePicture = e;

  String get name {
    if (_name == null) {
      logger.w("User have no name, will be used default name");
      return "Anonymous";
    }
    return _name!;
  }

  set name(String e) => _name = e;
}
