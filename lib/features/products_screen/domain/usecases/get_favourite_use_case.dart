import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/products_screen/data/models/favourite_model.dart';
import 'package:eCommerce_app/features/products_screen/domain/repository/products_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetFavouriteUseCase {
  ProductRepo productRepo;

  GetFavouriteUseCase(this.productRepo);

  Future<Either<RouteFailures, FavouriteModel>> call({String? id}){
    return id == null
        ? Future.value(Right(FavouriteModel(data: [])))
        : productRepo.getFavourite(prodId: id);
  }
}
