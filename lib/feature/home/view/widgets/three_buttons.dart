import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeButtons extends StatelessWidget {
  const ThreeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              3,
              (index) => MaterialButton(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: homeCubit.buttonIndex == index
                    ? AppColors.secondaryColor
                    : AppColors.anotherColor,
                onPressed: () {
                  homeCubit.changeButtonIndex(index);
                },
                child: Text(
                  'Button',
                  style: AppTextStyles.background22Bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
