import 'package:eCommerce_app/core/resources/assets_manager.dart';
import 'package:eCommerce_app/core/resources/color_manager.dart';
import 'package:eCommerce_app/core/resources/styles_manager.dart';
import 'package:eCommerce_app/core/resources/values_manager.dart';
import 'package:eCommerce_app/core/routes_manager/routes.dart';
import 'package:eCommerce_app/di.dart';
import 'package:eCommerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:eCommerce_app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:eCommerce_app/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:eCommerce_app/features/cart/presentation/widgets/total_price_and_checkout_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartBloc>()..add(GetCartEvent()),
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          if (state.getCartState == RequestState.loading) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Center(child: CircularProgressIndicator()),
                backgroundColor: Colors.transparent,
              ),
            );
          } else if (state.getCartState == RequestState.error) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text(state.failures?.message ?? ""),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Text("Ok"))
                ],
              ),
            );
          } else if (state.getCartState == RequestState.success) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.cartRoute,
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Cart',
                style:
                    getMediumStyle(fontSize: 20, color: ColorManager.textColor),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(
                      IconsAssets.icSearch,
                    ),
                    color: ColorManager.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(IconsAssets.icCart),
                    color: ColorManager.primary,
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(AppPadding.p14),
              child: Column(
                children: [
                  Expanded(
                    // the list of cart items ===========
                    child: ListView.separated(
                      itemBuilder: (context, index) => CartItemWidget(
                        imagePath: state.model?.data?.products?[index].product
                                ?.imageCover ??
                            "",
                        title: state
                                .model?.data?.products?[index].product?.title ??
                            "",
                        price: int.parse(state
                                .model?.data?.products?[index].price
                                .toString() ??
                            "0.0"),
                        quantity: state.model?.data?.products?[index].count
                                ?.toInt() ??
                            0,
                        onDeleteTap: () {},
                        onDecrementTap: (value) {},
                        onIncrementTap: (value) {},
                        size: 40,
                        color: Colors.black,
                        colorName: 'Black',
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: AppSize.s12.h),
                      itemCount: state.model?.numOfCartItems?.toInt() ?? 0,
                    ),
                  ),
                  // the total price and checkout button========
                  TotalPriceAndCheckoutBotton(
                    totalPrice: 1200,
                    checkoutButtonOnTap: () {},
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
