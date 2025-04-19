import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/core/failuers/remote_failuers.dart';
import 'package:eCommerce_app/features/cart/data/datasources/cart_ds.dart';
import 'package:eCommerce_app/features/cart/domain/repository/cart_repo.dart';
import 'package:eCommerce_app/features/products_screen/data/models/cart_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepo)
class CartRepoImpl implements CartRepo {
  CartDS cartDS;

  CartRepoImpl(this.cartDS);

  @override
  Future<Either<RouteFailures, CartModel>> getCart() async {
    try {
      var result = await cartDS.getCart();

      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
      rethrow;
    }
  }
}
