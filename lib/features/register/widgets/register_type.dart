import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/padding_manger.dart';

class RegisterType extends StatelessWidget {
  const RegisterType({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding:const EdgeInsetsDirectional.all(PaddingManger.kPadding/3),
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              color:Color(0xffF5F5F5),

            ),
            child: Image.asset('assets/images/icons/google_icon.png',height: 30.h,),
          ),
        ),
        Expanded(
          child: Container(
            padding:const EdgeInsetsDirectional.all(PaddingManger.kPadding/3),
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              color:Color(0xffF5F5F5),

            ),
            child: Image.asset('assets/images/icons/facebook_icon.png',height: 30.h,),
          ),
        ),
        Expanded(
          child: Container(
            padding:const EdgeInsetsDirectional.all(PaddingManger.kPadding/3),
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              color:Color(0xffF5F5F5),

            ),
            child: Image.asset('assets/images/icons/apple_icon.png',height: 30.h,),
          ),
        )

      ],
    );
  }
}
