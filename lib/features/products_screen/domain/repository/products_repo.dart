import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/products_screen/data/models/CartModel.dart';
import 'package:eCommerce_app/features/products_screen/data/models/ProductModel.dart';

abstract class ProductRepo {
  Future<Either<RouteFailures, ProductModel>> getProduct({String? catId});

  Future<Either<RouteFailures, CartModel>> addToCart({String? prodId});

  Future<Either<RouteFailures, ProductModel>> addToFavourite({String? prodId});
}
