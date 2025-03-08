import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/main_layout/home/data/models/CategoriesModel.dart';

abstract class HomeRepo {
  Future<Either<RouteFailures, CategoriesModel>> getCategories();
  Future<Either<RouteFailures, CategoriesModel>> getSubCategories(String id);
}
