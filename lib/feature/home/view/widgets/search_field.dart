import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/cubit/home_cubit.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    OutlineInputBorder borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.secondaryColor,
      ),
    );

    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
      child: TextFormField(
        style: const TextStyle(color: AppColors.anotherColor),
        cursorColor: AppColors.secondaryColor,
        onChanged: (value) {
          homeCubit.searchedItem(value);
        },
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          filled: true,
          fillColor: AppColors.backgroundColor,
          hintText: 'Search for any product',
          hintStyle: AppTextStyles.secondaryColor18WithOpacity,
          focusedBorder: borderStyle,
          enabledBorder: borderStyle,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.secondaryColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
