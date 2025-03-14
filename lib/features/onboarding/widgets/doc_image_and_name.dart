import 'package:flutter/material.dart';
import '../../../core/padding_manger.dart';
import '../../../core/theming/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndName extends StatelessWidget {
  const DocImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PaddingManger.kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: PaddingManger.kPadding/2.w,
        children: [

          SvgPicture.asset('assets/svgs/doc_logo.svg',height: 70.h,),
          Text(
            'DocDoc',
            style: getMyBoldTextStyle(textColor:Colors.black,fontSize: 25.sp),


          ),


        ],
      ),
    );
  }
}
