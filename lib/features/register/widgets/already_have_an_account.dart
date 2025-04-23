import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/app_color.dart';
import '../../../core/theming/text_style.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account yet?',
          style: getMyRegularTextStyle(textColor: Colors.black),
        ),
        TextButton(onPressed: (){
          context.pushNamedAndRemoveUntil(Routes.loginScreen,predicate: (x)=>false);
        }, child: Text(
          'Sign In',
          style: getMyRegularTextStyle(textColor: ColorManger.primaryColor),
        ))
      ],
    );
  }
}
