import 'package:eCommerce_app/core/api/api_manager.dart';
import 'package:eCommerce_app/core/resources/chace_helper.dart';
import 'package:eCommerce_app/core/resources/endpoints.dart';
import 'package:eCommerce_app/features/cart/data/datasources/cart_ds.dart';
import 'package:eCommerce_app/features/products_screen/data/models/cart_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartDS)
class CartDSImpl implements CartDS {
  APIManager apiManager;

  CartDSImpl(this.apiManager);

  @override
  Future<CartModel> getCart() async {
    try {
      var token = SharedPrefs.get("token");
      var response = await apiManager
          .getRequest(EndPoints.cart, headers: {'token': token});

      var cartModel = CartModel.fromJson(response.data);
      return cartModel;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
