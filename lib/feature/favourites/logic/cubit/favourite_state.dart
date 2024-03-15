part of 'favourite_cubit.dart';

@immutable
sealed class FavouriteState {}

final class FavouriteInitial extends FavouriteState {}

final class FavouritesAdded extends FavouriteState {}

final class FavouritesRemoved extends FavouriteState {}
