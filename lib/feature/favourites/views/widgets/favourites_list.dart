import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/network_image.dart';
import '../../../home/logic/cubit/home_cubit.dart';
import '../../logic/cubit/favourite_cubit.dart';

class FavouritesList extends StatelessWidget {
  const FavouritesList({
    super.key,
    required this.favouriteCubit,
    required this.homeCubit,
  });

  final FavouriteCubit favouriteCubit;
  final HomeCubit homeCubit;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: favouriteCubit.favourites.entries
          .map((e) => ListTile(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.detailsScreen,
                  arguments: e.value.itemModel,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                titleTextStyle: AppTextStyles.anotherColor22Bold,
                subtitleTextStyle: AppTextStyles.anotherColor18,
                trailing: IconButton(
                  onPressed: () {
                    favouriteCubit.removeFromFavourites(e.value.index);
                    homeCubit.favouriteNotChosen(e.value.index);
                  },
                  icon: const Icon(
                    Icons.favorite,
                  ),
                ),
                iconColor: Colors.red,
                subtitle: const Text('5 stars'),
                leading: SizedBox(
                  width: 85.w,
                  child: Center(
                    child: MyNetworkImage(
                      imageUrl: e.value.image,
                    ),
                  ),
                ),
                title: Text(e.value.name),
              ))
          .toList(),
    );
  }
}
