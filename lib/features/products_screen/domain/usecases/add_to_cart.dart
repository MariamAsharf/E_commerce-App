import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/products_screen/data/models/cart_model.dart';
import 'package:eCommerce_app/features/products_screen/data/models/product_model.dart';
import 'package:eCommerce_app/features/products_screen/domain/repository/products_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddToCartUseCase {
  ProductRepo repo;

  AddToCartUseCase(this.repo);

  Future<Either<RouteFailures, CartModel>> call({String? id}) =>
      repo.addToCart(prodId: id);
}
