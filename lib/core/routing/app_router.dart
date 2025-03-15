import 'package:flutter/material.dart';
import 'routes.dart';
import '../../features/login/login_screen.dart';
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
           builder:(_)=>const LoginScreen() );
      default:
        return MaterialPageRoute(
            builder:(_)=>Scaffold(
              body: Center(child: Text('No route defined for ${settings.name}'),),
            )
        );

    }


  }
}