import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/products_screen/data/models/cart_model.dart';
import 'package:eCommerce_app/features/products_screen/data/models/favourite_model.dart';
import 'package:eCommerce_app/features/products_screen/data/models/product_model.dart';

abstract class ProductRepo {
  Future<Either<RouteFailures, ProductModel>> getProduct({String? catId});

  Future<Either<RouteFailures, CartModel>> addToCart({String? prodId});

  Future<Either<RouteFailures, FavouriteModel>> getFavourite({String? prodId});

}
