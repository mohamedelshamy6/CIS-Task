import 'package:bloc/bloc.dart';
import '../../data/models/item_model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<ItemModel> searchedList = Items.items;
  int buttonIndex = 0;

  void searchedItem(letter) {
    //* To search in the list based on name.
    searchedList = Items.items
        .where((item) => item.name.toLowerCase().startsWith(letter))
        .toList();
    emit(IsSearchState());
  }

  void changeButtonIndex(index) {
    //* Change button index to just toggle between buttons.
    buttonIndex = index;
    emit(HomeButtonChosen());
  }

  void favouriteChosen(index) {
    //* set item as favourite.
    searchedList[index].isFavourite = true;
    emit(HomeFavouriteChosen());
  }

  void favouriteNotChosen(index) {
    //* set item as non-favourite.
    searchedList[index].isFavourite = false;
    emit(HomeFavouriteNotChosen());
  }
}