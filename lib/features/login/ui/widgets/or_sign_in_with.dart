import 'package:flutter/cupertino.dart';

import '../../../../core/theming/app_color.dart';
import '../../../../core/theming/text_style.dart';

class OrSignInWith extends StatelessWidget {
  const OrSignInWith({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: ColorManger.lightGrey,
          ),
        ),
        Text(
          '  Or sign in with  ',
          style: getMyRegularTextStyle(textColor: ColorManger.lightGrey),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: ColorManger.lightGrey,
          ),
        ),
      ],
    );
  }
}
