import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_color.dart';
import '../../../core/theming/text_style.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Text(
          'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
          textAlign: TextAlign.center,
          style:getMyRegularTextStyle(textColor: ColorManger.greyColor,fontSize: 12.sp) ,
        ),
      ],
    );
  }
}
