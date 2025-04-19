import 'package:cached_network_image/cached_network_image.dart';
import 'package:eCommerce_app/core/resources/color_manager.dart';
import 'package:eCommerce_app/core/resources/constants_manager.dart';
import 'package:eCommerce_app/core/resources/values_manager.dart';
import 'package:eCommerce_app/core/routes_manager/routes.dart';
import 'package:eCommerce_app/core/widget/heart_button.dart';
import 'package:eCommerce_app/features/main_layout/favourite/presentation/widgets/add_to_cart_button.dart';
import 'package:eCommerce_app/features/main_layout/favourite/presentation/widgets/favourite_item_details.dart';
import 'package:eCommerce_app/features/products_screen/presentation/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.id,
    required this.price,
  });

  final String imagePath;
  final String title;
  final String id;

  final int price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.productDetails);
      },
      child: Container(
        height: AppSize.s135.h,
        padding: EdgeInsets.only(right: AppSize.s8.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s16.r),
            border: Border.all(color: ColorManager.primary.withOpacity(.3))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s16.r),
                  border:
                      Border.all(color: ColorManager.primary.withOpacity(.6))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s16.r),
                child: CachedNetworkImage(
                  width: AppSize.s120.w,
                  height: AppSize.s135.h,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                      color: ColorManager.primary,
                    ),
                  ),
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    color: ColorManager.primary,
                  ),
                  imageUrl: imagePath,
                ),
              ),
            ),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: AppSize.s8.w),
                    child: FavouriteItemDetails(
                      imagePath: imagePath,
                      title: title,
                      price: price,
                    ))),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                HeartButton(
                  onTap: () {
                    BlocProvider.of<ProductBloc>(context)
                        .add(GetFavouritesEvent(prodId: id));
                  },
                ),
                SizedBox(height: AppSize.s14.h),
                AddToCartButton(
                  onPressed: () {
                    BlocProvider.of<ProductBloc>(context)
                        .add(AddToCartEvent(prodId: id));
                  },
                  text: AppConstants.addToCart,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
