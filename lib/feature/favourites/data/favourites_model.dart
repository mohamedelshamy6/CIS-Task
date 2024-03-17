import '../../home/data/models/item_model.dart';

class FavouritesModel {
  final String name, image;
  final int index;
  final ItemModel itemModel;

  FavouritesModel({
    required this.index,
    required this.name,
    required this.image,
    required this.itemModel,
  });
}
