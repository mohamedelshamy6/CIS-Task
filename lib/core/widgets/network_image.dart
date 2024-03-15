import 'package:cached_network_image/cached_network_image.dart';
import '../theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  const MyNetworkImage({
    this.height,
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: CachedNetworkImage(
        placeholder: (context, url) => SizedBox(
          height: height,
          child: const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          ),
        ),
        imageUrl: imageUrl,
      ),
    );
  }
}
