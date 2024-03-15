import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/my_app_bar.dart';
import '../../logic/cubit/favourite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/logic/cubit/home_cubit.dart';
import '../widgets/favourites_list.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    final favouriteCubit = BlocProvider.of<FavouriteCubit>(context);
    return BlocBuilder<FavouriteCubit, FavouriteState>(
      builder: (context, state) {
        return Scaffold(
          appBar: MyAppBar(
            title: 'Favourites (${favouriteCubit.favourites.length})',
            icon: false,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 24.h,
            ),
            child: favouriteCubit.favourites.isEmpty
                ? Center(
                    child: Text(
                      'No Favourites Yet.',
                      style: AppTextStyles.anotherColor32Bold,
                    ),
                  )
                : FavouritesList(
                    favouriteCubit: favouriteCubit,
                    homeCubit: homeCubit,
                  ),
          ),
        );
      },
    );
  }
}
