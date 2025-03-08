import 'package:eCommerce_app/core/resources/values_manager.dart';
import 'package:eCommerce_app/di.dart';
import 'package:eCommerce_app/features/main_layout/favourite/presentation/bloc/favourite_bloc.dart';
import 'package:eCommerce_app/features/main_layout/favourite/presentation/widgets/favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavouriteBloc>()..add(AddToFavouriteEvent()),
      child: BlocConsumer<FavouriteBloc, FavouriteState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.s14.w, vertical: AppSize.s10.h),
              child: ListView.builder(
                itemCount: state.model?.data?.length ?? 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: AppSize.s12.h),
                    child: FavoriteItem(
                      imagePath: state.model?.data?[index].imageCover ?? "",
                      title: state.model?.data?[index].title ?? "",
                      price: state.model?.data?[index].price ?? 0,

                    ),
                  );
                },
              ));
        },
      ),
    );
  }
}
