import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/favourites_model.dart';

part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(FavouriteInitial());
  Map<int, FavouritesModel> favourites = {};

  void addToFavourites(int index, FavouritesModel favouritesModel) {
    //* Add item to a map called favourites to set a key to every item not just an index.
    favourites.addEntries({index: favouritesModel}.entries);
    emit(FavouritesAdded());
  }

  void removeFromFavourites(index) {
    //* Remove item from favourites.
    favourites.remove(index);
    emit(FavouritesRemoved());
  }
}
