import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/category_products.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'all_products.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  Map data = {};
  String categorie;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    categorie = data != null ? data['categorie'] : null;
    Widget ListProducts =
        categorie != null ? CategoryProducts(ctg: categorie) : AllProducts();
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            SizedBox(height: getProportionateScreenWidth(30)),
            ListProducts,
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
