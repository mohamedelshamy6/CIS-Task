import '../routes/routes.dart';
import '../theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool? icon;
  const MyAppBar({
    super.key,
    required this.title,
    this.icon,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;
  @override
  // ignore: library_private_types_in_public_api
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: AppColors.anotherColor),
      actions: [
        widget.icon!
            ? IconButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  AppRoutes.favouritesScreen,
                ),
                icon: const Icon(
                  Icons.favorite,
                  color: AppColors.anotherColor,
                ),
              )
            : Container()
      ],
      backgroundColor: AppColors.primaryColor,
      centerTitle: !widget.icon! ? true : false,
      title: Text(
        widget.title,
        style: AppTextStyles.anotherColor24Bold,
      ),
    );
  }
}
