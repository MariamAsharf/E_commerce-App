import 'package:eCommerce_app/features/products_screen/data/models/CartModel.dart';
import 'package:eCommerce_app/features/products_screen/data/models/ProductModel.dart';

abstract class ProductDS {
  Future<ProductModel> getProduct({String? id});
  Future<CartModel> addToCart({String? id});
  Future<ProductModel> addToFavourite({String? id});

}
