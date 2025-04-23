import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/dependancy_injetion/dependancy_injetion.dart';
import 'core/helpers/app_regx.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

import 'core/helpers/bloc_observer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await ScreenUtil.ensureScreenSize();


  setUpGetIt();

  runApp( DocApp(appRouter: AppRouter(),));
}

