import '../../../../core/widgets/my_app_bar.dart';
import '../../../../core/widgets/network_image.dart';
import '../../../home/data/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets/details_button.dart';
import '../widgets/image_indicator.dart';
import '../../../../core/theme/app_text_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      appBar: MyAppBar(
        title: itemModel.name,
        icon: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView(
                controller: controller,
                children: [
                  MyNetworkImage(imageUrl: itemModel.imageOneName),
                  MyNetworkImage(imageUrl: itemModel.imageTwoName),
                  MyNetworkImage(imageUrl: itemModel.imageThreeName),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            ImageIndicator(controller: controller),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  itemModel.name,
                  style: AppTextStyles.anotherColor22Bold,
                ),
                Text(
                  '5 stars',
                  style: AppTextStyles.anotherColor18,
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Text(
              'DocsDocsDocsDocsDocsDocsDocs',
              textAlign: TextAlign.center,
              style: AppTextStyles.anotherColor22,
            ),
            SizedBox(height: 24.h),
            const DetailsButton(
              title: 'Add to cart',
              color: AppColors.anotherColor,
            ),
            SizedBox(height: 16.h),
            const DetailsButton(
              title: 'Buy Now',
              color: AppColors.secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
