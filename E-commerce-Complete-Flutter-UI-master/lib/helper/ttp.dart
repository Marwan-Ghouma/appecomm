import 'package:shop_app/models/Product.dart';

double ttp = 0;
var pname = '';
var ppt = '';
var txt;
double tst;
void addproduct(Product product) {
  tst = 1;
  ppt = product.price;
  ttp += double.parse('$ppt ');
  pname = product.title;
  txt = '$pname ajouter avec succés';
}

void dellproduct() {
  if (tst == 1) {
    ttp -= double.parse('$ppt ');
    tst = 0;
    txt = '$pname a été supprimé ';
  }
}
