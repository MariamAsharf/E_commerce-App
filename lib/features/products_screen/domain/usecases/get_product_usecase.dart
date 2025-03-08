import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/products_screen/data/models/ProductModel.dart';
import 'package:eCommerce_app/features/products_screen/domain/repository/products_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsUseCase {
  ProductRepo repo;

  GetProductsUseCase(this.repo);

  Future<Either<RouteFailures, ProductModel>> call({String? id}) =>
      repo.getProduct();
}
