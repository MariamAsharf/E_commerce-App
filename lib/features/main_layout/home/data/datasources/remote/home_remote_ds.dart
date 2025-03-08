import 'package:eCommerce_app/features/main_layout/home/data/models/CategoriesModel.dart';

abstract class HomeRemoteDS {
  Future<CategoriesModel> getCategories();
  Future<CategoriesModel> getSubCategories(String id);
}
