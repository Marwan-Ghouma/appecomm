import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({key}) : super(key: key);

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    final prods = Provider.of<QuerySnapshot>(context);

    Future<dynamic> get_products() {
      print('HHEEEEEYYYYYYYYYY');
      return FirebaseFirestore.instance
          .collection('products')
          .snapshots()
          .forEach((doc) {
        print(doc.docs.toString());
      });
    }

    return Container();
  }
}
