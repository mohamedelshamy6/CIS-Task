import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/app_router.dart';
import 'core/theme/app_colors.dart';

class CisTask extends StatelessWidget {
  const CisTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(460, 910),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          useMaterial3: true,
        ),
        onGenerateRoute: AppRouter().onGenerateRoute,
      ),
    );
  }
}
