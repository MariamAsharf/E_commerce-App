import 'package:eCommerce_app/core/resources/values_manager.dart';
import 'package:eCommerce_app/di.dart';
import 'package:eCommerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:eCommerce_app/features/main_layout/favourite/presentation/widgets/favourite_item.dart';
import 'package:eCommerce_app/features/products_screen/data/models/product_model.dart';
import 'package:eCommerce_app/features/products_screen/presentation/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProductBloc>()..add(GetFavouritesEvent(prodId: null)),
      child: BlocConsumer<ProductBloc, ProductState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.getFavouriteState == RequestState.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.getFavouriteState == RequestState.success) {
              final favList = state.favouritemodel?.data ?? [];
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.s14.w,
                  vertical: AppSize.s10.h,
                ),
                child: ListView.builder(
                  itemCount: favList.length,
                  itemBuilder: (context, index) {
                    final id = favList[index];
                    final product = state.model?.data?.firstWhere(
                      (element) => element.id == id,
                      orElse: () =>
                          Data(),
                    );

                    if (product?.id == '') return SizedBox();

                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: AppSize.s12.h),
                      child: FavoriteItem(
                        id: product?.id ?? "",
                        imagePath: product?.imageCover ?? "",
                        title: product?.title ?? "",
                        price: product?.price ?? 0,
                      ),
                    );
                  },
                ),
              );
            } else {
              return const Center(child: Text('Something Went Wrong'));
            }
          }),
    );
  }
}
