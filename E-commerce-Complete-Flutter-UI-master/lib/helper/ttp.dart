import 'package:shop_app/models/Product.dart';

double ttp = 0;
var pname = '';
var ppt = '';
void addproduct(Product product) {
  ppt = product.price;
  ttp += double.parse('$ppt ');
  pname = product.title;
}
