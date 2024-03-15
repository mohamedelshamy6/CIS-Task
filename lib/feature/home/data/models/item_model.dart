import '../../../../core/helpers/app_images.dart';

class ItemModel {
  final String name, imageOneName, imageTwoName, imageThreeName;
  final int index;
  bool? isFavourite;

  ItemModel({
    this.isFavourite,
    required this.imageOneName,
    required this.imageTwoName,
    required this.imageThreeName,
    required this.name,
    required this.index,
  });
}

class Items {
  static List<ItemModel> items = [
    ItemModel(
      index: 0,
      isFavourite: false,
      name: 'Chair 1',
      imageOneName: AppImages.imageOne,
      imageTwoName: AppImages.imageTwo,
      imageThreeName: AppImages.imageThree,
    ),
    ItemModel(
      index: 1,
      isFavourite: false,
      name: 'Chair 2',
      imageOneName: AppImages.imageTwo,
      imageTwoName: AppImages.imageThree,
      imageThreeName: AppImages.imageFour,
    ),
    ItemModel(
      index: 2,
      isFavourite: false,
      name: 'Chair 3',
      imageOneName: AppImages.imageThree,
      imageTwoName: AppImages.imageFour,
      imageThreeName: AppImages.imageFive,
    ),
    ItemModel(
      index: 3,
      isFavourite: false,
      name: 'Chair 4',
      imageOneName: AppImages.imageFour,
      imageTwoName: AppImages.imageFive,
      imageThreeName: AppImages.imageSix,
    ),
    ItemModel(
      index: 4,
      isFavourite: false,
      name: 'Chair 5',
      imageOneName: AppImages.imageFive,
      imageTwoName: AppImages.imageSix,
      imageThreeName: AppImages.imageSeven,
    ),
    ItemModel(
      index: 5,
      isFavourite: false,
      name: 'Chair 6',
      imageOneName: AppImages.imageSix,
      imageTwoName: AppImages.imageSeven,
      imageThreeName: AppImages.imageEight,
    ),
    ItemModel(
      index: 6,
      isFavourite: false,
      name: 'Chair 7',
      imageOneName: AppImages.imageSeven,
      imageTwoName: AppImages.imageEight,
      imageThreeName: AppImages.imageNine,
    ),
    ItemModel(
      index: 7,
      isFavourite: false,
      name: 'Chair 8',
      imageOneName: AppImages.imageEight,
      imageTwoName: AppImages.imageNine,
      imageThreeName: AppImages.imageOne,
    ),
    ItemModel(
      index: 8,
      isFavourite: false,
      name: 'Chair 9',
      imageOneName: AppImages.imageNine,
      imageTwoName: AppImages.imageOne,
      imageThreeName: AppImages.imageTwo,
    ),
  ];
}
