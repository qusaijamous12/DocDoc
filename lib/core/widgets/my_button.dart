import 'package:flutter/material.dart';

import '../padding_manger.dart';
import '../theming/app_color.dart';
import '../theming/text_style.dart';

class MyButton extends StatelessWidget {
  final onTap;
  final String title;
  const MyButton({super.key,required this.onTap,required this.title});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
        onPressed: onTap,

        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorManger.primaryColor),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: MaterialStateProperty.all(const Size(double.infinity, 53)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(PaddingManger.kPadding)
            )
          )
        ),
        child: Text(
          title,
          style: getMyRegularTextStyle(textColor: Colors.white),
        ));
  }
}
