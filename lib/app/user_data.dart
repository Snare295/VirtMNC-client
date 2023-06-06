import 'package:flutter/material.dart';

///Singleton of where UserData is stored like avatar, name etc.
///Store only user specific data, app-related store in other singletons
class UserData {
  static final UserData _instance = UserData._internals();
  factory UserData() {
    return _instance;
  }
  UserData._internals();

  static AssetImage? _userProfilePicture;
  static const AssetImage _standartProfilePicture =
      AssetImage("assets/images/user.png");

  AssetImage get userProfilePicture =>
      _userProfilePicture ?? _standartProfilePicture;
  set userProfilePicture(AssetImage e) => _userProfilePicture = e;
}
