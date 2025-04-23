import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_color.dart';
import '../../../../core/theming/text_style.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return    RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            children: [
              TextSpan(
                  text: 'By logging, you agree to our',
                  style: getMyRegularTextStyle(textColor: ColorManger.lightGrey,fontSize: 14.sp)
              ),
              TextSpan(
                  text: ' Terms & Conditions',
                  style: getMyRegularTextStyle(textColor: Colors.black,fontSize: 14.sp)
              ),
              TextSpan(
                  text: ' and',
                  style: getMyRegularTextStyle(textColor: ColorManger.lightGrey,fontSize: 14.sp)
              ),
              TextSpan(
                  text: ' PrivacyPolicy.',
                  style: getMyRegularTextStyle(textColor: Colors.black,fontSize: 14.sp)
              ),
            ]
        ));
  }
}
