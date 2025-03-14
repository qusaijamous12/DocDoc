import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance_project/core/routing/app_router.dart';
import 'package:flutter_advance_project/core/theming/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key,required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      // splitScreenMode: true,
      child: MaterialApp(
        title: 'Doc App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor:ColorManger.primaryColor,
          scaffoldBackgroundColor: Colors.white
        ),
        onGenerateRoute: appRouter.generateRouter,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
