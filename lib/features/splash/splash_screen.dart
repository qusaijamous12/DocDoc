import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/extensions.dart';
import '../../core/routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  Timer ?_timer;
  
 void _onStart(){
    _timer=Timer(const Duration(seconds: 3), _onFinish);
    
  }
  
  void _onFinish(){
    context.pushNamedAndRemoveUntil(Routes.onBoardingScreen,predicate: (x)=>false,);
  }
  
  @override
  void initState() {
    _onStart();
    super.initState();
  }
  @override
  void dispose() {
   _timer?.cancel();
    super.dispose();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/splash.png',fit: BoxFit.fill,),
    );
  }
}
