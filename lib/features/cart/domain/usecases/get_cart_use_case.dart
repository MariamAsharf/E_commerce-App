import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/cart/domain/repository/cart_repo.dart';
import 'package:eCommerce_app/features/products_screen/data/models/CartModel.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartUseCase {
  CartRepo repo;

  GetCartUseCase(this.repo);

  Future<Either<RouteFailures, CartModel>> call() => repo.getCart();
}
