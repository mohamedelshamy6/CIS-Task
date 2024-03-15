import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/network_image.dart';
import '../../../favourites/data/favourites_model.dart';
import '../../../favourites/logic/cubit/favourite_cubit.dart';
import '../../logic/cubit/home_cubit.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    final favouriteCubit = BlocProvider.of<FavouriteCubit>(context);

    return BlocListener<FavouriteCubit, FavouriteState>(
      listener: (context, state) {},
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Expanded(
            //* Building the items list.
            child: GridView.builder(
                itemCount: homeCubit.searchedList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = homeCubit.searchedList[index];
                  return InkWell(
                    onTap: () {
                      //* Navigating to details screen.
                      Navigator.pushNamed(
                        context,
                        AppRoutes.detailsScreen,
                        arguments: item,
                      );
                    },
                    child: Card(
                      color: AppColors.secondaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          MyNetworkImage(
                            imageUrl: item.imageOneName,
                            height: 50.h,
                          ),
                          SizedBox(height: 8.h),
                          Positioned(
                            top: 165.h,
                            left: 20.w,
                            child: Text(
                              item.name,
                              style: AppTextStyles.background22Bold,
                            ),
                          ),
                          //* =========================================================
                          //* Favourite icon with it's logic.
                          Positioned(
                            left: 165.w,
                            top: 150.h,
                            child: IconButton(
                              onPressed: () {
                                //* =========================================================
                                //*To set item as a favourite or not.
                                !item.isFavourite!
                                    ? homeCubit.favouriteChosen(index)
                                    : homeCubit.favouriteNotChosen(index);
                                //* =========================================================
                                //* To add item in the favourites screen or remove it.
                                item.isFavourite!
                                    ? favouriteCubit.addToFavourites(
                                        item.index,
                                        FavouritesModel(
                                          name: item.name,
                                          image: item.imageOneName,
                                          index: item.index,
                                          inSearchIndex: index,
                                          itemModel: item,
                                        ),
                                      )
                                    : favouriteCubit
                                        .removeFromFavourites(item.index);
                                //* =========================================================
                              },
                              icon: !item.isFavourite!
                                  ? const Icon(
                                      Icons.favorite_border,
                                    )
                                  : const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
