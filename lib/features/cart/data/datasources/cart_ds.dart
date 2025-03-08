import 'package:eCommerce_app/features/products_screen/data/models/CartModel.dart';

abstract class CartDS{


 Future<CartModel> getCart();
}