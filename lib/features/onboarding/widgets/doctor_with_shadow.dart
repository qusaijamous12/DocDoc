import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/app_color.dart';
import '../../../core/theming/text_style.dart';

class DoctorWithShadow extends StatelessWidget {
  const DoctorWithShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/on_board_logo.png'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0)
            ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const[0.14,0.4]
            ),


          ),
          child: Image.asset('assets/images/doctor_image.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor Appointment App',
              textAlign: TextAlign.center,
              style:getMyBoldTextStyle(textColor: ColorManger.primaryColor,fontSize: 30.sp) ,
          ),
        )
      ],
    );
  }
}
