import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance_project/core/routing/routes.dart';
import 'package:flutter_advance_project/features/login/login_screen.dart';
import 'package:flutter_advance_project/features/onboarding/on_boarding_screen.dart';

class AppRouter{

  Route generateRouter(RouteSettings settings){
    switch(settings.name){

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_)=>OnBoardingScreen()
        );
      case Routes.loginScreen:
       return MaterialPageRoute(
           builder:(_)=>LoginScreen() );
      default:
        return MaterialPageRoute(
            builder:(_)=>Scaffold(
              body: Center(child: Text('No route defined for ${settings.name}'),),
            )
        );

    }


  }
}