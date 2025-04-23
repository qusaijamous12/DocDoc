import 'package:flutter/material.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_color.dart';
import '../../../../core/theming/text_style.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an Account?',
          style: getMyRegularTextStyle(textColor: Colors.black),
        ),
        TextButton(onPressed: (){
          context.pushNamedAndRemoveUntil(Routes.registerScreen,predicate: (x)=>false);
        }, child: Text(
          'Sign Up',
          style: getMyRegularTextStyle(textColor: ColorManger.primaryColor),
        ))
      ],
    );
  }
}
