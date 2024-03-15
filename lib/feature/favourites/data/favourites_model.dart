import '../../home/data/models/item_model.dart';

class FavouritesModel {
  final String name, image;
  final int index, inSearchIndex;
  final ItemModel itemModel;

  FavouritesModel({
    required this.index,
    required this.inSearchIndex,
    required this.name,
    required this.image,
    required this.itemModel,
  });
}
