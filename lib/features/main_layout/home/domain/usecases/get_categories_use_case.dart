import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/main_layout/home/data/models/CategoriesModel.dart';
import 'package:eCommerce_app/features/main_layout/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  HomeRepo repo;

  GetCategoriesUseCase(this.repo);

  Future<Either<RouteFailures, CategoriesModel>> call() => repo.getCategories();
}
