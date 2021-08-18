import 'package:flutter/material.dart';
import 'package:shop_app/models/user.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  static String routeName = "/wrapper";
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //return either home or auth

    if (user == null) {
      return SplashScreen();
    } else {
      return HomeScreen();
    }
  }
}
