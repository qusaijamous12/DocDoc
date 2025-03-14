import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/helpers/extensions.dart';
import '../../core/padding_manger.dart';
import '../../core/routing/routes.dart';
import '../../core/theming/app_color.dart';
import '../../core/theming/text_style.dart';
import '../../core/widgets/my_button.dart';
import 'widgets/doc_image_and_name.dart';

import 'widgets/doctor_with_shadow.dart';
import 'widgets/title_and_subtitle.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.only(
          top: PaddingManger.kPadding * 2,
          start: PaddingManger.kPadding,
          end: PaddingManger.kPadding,
          bottom: PaddingManger.kPadding,
        ),
        child: Column(

          children: [
            const DocImageAndName(),
             SizedBox(
              height: PaddingManger.kPadding.h*3,
            ),
            const DoctorWithShadow(),

            const TitleAndSubtitle(),
            SizedBox(
              height: PaddingManger.kPadding.h*2,
            ),
            MyButton(onTap: (){
              context.pushNamedAndRemoveUntil(Routes.loginScreen,predicate: (x)=>false);
            }, title: 'Get Started')

          ],
        ),
      ),
    );
  }
}
