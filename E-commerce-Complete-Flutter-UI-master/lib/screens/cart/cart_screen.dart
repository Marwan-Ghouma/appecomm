import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/home/home_screen.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';
import 'package:shop_app/helper/ttp.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 150, 10, 0),
          child: Column(
            children: [
              Text(
                '$txt',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.pinkAccent,
                ),
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/Trash.svg"),
                onPressed: () {
                  dellproduct();
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          /*Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),*/
        ],
      ),
    );
  }
}
