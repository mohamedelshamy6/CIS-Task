part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeButtonChosen extends HomeState {}
final class HomeFavouriteChosen extends HomeState {}
final class HomeFavouriteNotChosen extends HomeState {}
final class IsSearchState extends HomeState {}

