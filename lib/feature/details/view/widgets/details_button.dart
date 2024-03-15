import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

class DetailsButton extends StatelessWidget {
  final Color color;
  final String title;
  const DetailsButton({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: 50,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: color,
      child: Text(
        title,
        style: AppTextStyles.background20Bold,
      ),
    );
  }
}
