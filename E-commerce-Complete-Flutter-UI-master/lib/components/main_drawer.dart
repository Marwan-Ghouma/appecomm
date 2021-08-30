import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Catégories",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 45.0,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      ListTile(
        onTap: () {
          Navigator.popAndPushNamed(context, HomeScreen.routeName,
              arguments: {'categorie': "Santé et Beauté"});
        },
        leading: Icon(
          Icons.person,
          color: Colors.black,
        ),
        title: Text("Santé et Beauté"),
      ),
      ListTile(
        onTap: () {
          Navigator.popAndPushNamed(context, HomeScreen.routeName,
              arguments: {'categorie': "Produits animaliers"});
        },
        leading: Icon(
          Icons.inbox,
          color: Colors.black,
        ),
        title: Text("Produits animaliers"),
      ),
      ListTile(
        onTap: () {
          Navigator.popAndPushNamed(context, HomeScreen.routeName,
              arguments: {'categorie': "Plantes aromatiques et médicinales"});
        },
        leading: Icon(
          Icons.assessment,
          color: Colors.black,
        ),
        title: Text("Plantes aromatiques et médicinales"),
      ),
      ListTile(
        onTap: () {
          Navigator.popAndPushNamed(context, HomeScreen.routeName,
              arguments: {'categorie': "Produits artisanaux"});
        },
        leading: Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: Text("Produits artisanaux"),
      ),
      ListTile(
        onTap: () {
          Navigator.popAndPushNamed(context, HomeScreen.routeName,
              arguments: {'categorie': "Plats traditionnels"});
        },
        leading: Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: Text("Plats traditionnels"),
      ),
    ]);
  }
}
