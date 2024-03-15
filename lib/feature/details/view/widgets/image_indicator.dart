import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/theme/app_colors.dart';

class ImageIndicator extends StatelessWidget {
  const ImageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            controller.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: AppColors.secondaryColor,
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: ExpandingDotsEffect(
            dotHeight: 8.w,
            dotWidth: 8.h,
            dotColor: AppColors.anotherColor,
            activeDotColor: AppColors.primaryColor,
          ),
        ),
        IconButton(
          onPressed: () {
            controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
          icon: const Icon(
            Icons.arrow_forward_outlined,
            color: AppColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
