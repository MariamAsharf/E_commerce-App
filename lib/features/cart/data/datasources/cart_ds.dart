import 'package:eCommerce_app/features/products_screen/data/models/cart_model.dart';

abstract class CartDS{


 Future<CartModel> getCart();
}