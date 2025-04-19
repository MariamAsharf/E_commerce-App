import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/products_screen/data/models/cart_model.dart';

abstract class CartRepo {
  Future<Either<RouteFailures, CartModel>> getCart();
}
