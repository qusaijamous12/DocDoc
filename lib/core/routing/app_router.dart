import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home_screen/home_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/register/logic/cubit/register_cubit.dart';
import '../../features/register/register_screen.dart';
import '../dependancy_injetion/dependancy_injetion.dart';
import 'routes.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/on_boarding_screen.dart';

import '../../features/splash/splash_screen.dart';

class AppRouter{

   Route generateRouter(RouteSettings settings){
    switch(settings.name){
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_)=>const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_)=>const OnBoardingScreen()
        );
      case Routes.loginScreen:
       return MaterialPageRoute(
       builder: (_)=>BlocProvider(create:(BuildContext context)=>getIt<LoginCubit>(),child:const LoginScreen(),),);
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_)=>const HomeScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_)=>BlocProvider(create: (BuildContext context)=>getIt<RegisterCubit>(),child: const RegisterScreen(),));
      default:
        return MaterialPageRoute(
            builder:(_)=>Scaffold(
              body: Center(child: Text('No route defined for ${settings.name}'),),
            )
        );

    }


  }
}