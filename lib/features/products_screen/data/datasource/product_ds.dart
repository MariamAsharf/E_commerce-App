import 'package:eCommerce_app/features/products_screen/data/models/cart_model.dart';
import 'package:eCommerce_app/features/products_screen/data/models/favourite_model.dart';
import 'package:eCommerce_app/features/products_screen/data/models/product_model.dart';

abstract class ProductDS {
  Future<ProductModel> getProduct({String? id});
  Future<CartModel> addToCart({String? id});
  Future<FavouriteModel> addToFavourite({String? id});

}
