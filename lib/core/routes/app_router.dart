import 'routes.dart';
import '../../feature/details/view/screens/item_details.dart';
import '../../feature/favourites/logic/cubit/favourite_cubit.dart';
import '../../feature/favourites/views/screens/favourites_screen.dart';
import '../../feature/home/data/models/item_model.dart';
import '../../feature/home/logic/cubit/home_cubit.dart';
import '../../feature/home/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final FavouriteCubit favouriteCubit = FavouriteCubit();
  final HomeCubit homeCubit = HomeCubit();
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<HomeCubit>.value(value: homeCubit),
              BlocProvider<FavouriteCubit>.value(value: favouriteCubit),
            ],
            child: const HomeScreen(),
          ),
        );
      case AppRoutes.detailsScreen:
        return MaterialPageRoute(
          builder: (context) => ItemDetails(
            itemModel: routeSettings.arguments as ItemModel,
          ),
        );
      case AppRoutes.favouritesScreen:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<HomeCubit>.value(value: homeCubit),
              BlocProvider<FavouriteCubit>.value(value: favouriteCubit),
            ],
            child: const FavouritesScreen(),
          ),
        );
    }
    return null;
  }
}
