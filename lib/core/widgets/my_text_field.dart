import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../padding_manger.dart';
import '../theming/app_color.dart';
import '../theming/text_style.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType textInputType;
  final bool ?obsecureText;
  final Widget ?suffixIcon;
  final String? Function(String?)? validate;

  const MyTextField({super.key,required this.hintText,required this.textInputType,required this.controller,this.obsecureText,this.suffixIcon,this.validate});

  @override
  Widget build(BuildContext context) {
    return TextFormField  (
      controller:controller ,
      keyboardType:textInputType ,
      obscureText: obsecureText??false,
      decoration: InputDecoration(
          isDense: true,
          contentPadding:const EdgeInsetsDirectional.all( PaddingManger.kPadding),
          focusedBorder: OutlineInputBorder(
            borderSide:const BorderSide(
              color: ColorManger.primaryColor,
            ),
            borderRadius: BorderRadius.circular(PaddingManger.kPadding/2),

          ),
          enabledBorder: OutlineInputBorder(
            borderSide:const BorderSide(
              color: ColorManger.greyColor,
            ),
            borderRadius: BorderRadius.circular(PaddingManger.kPadding/2),

          ),
          errorBorder: OutlineInputBorder(
            borderSide:const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(PaddingManger.kPadding/2),

          ),
          focusedErrorBorder:OutlineInputBorder(
            borderSide:const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(PaddingManger.kPadding/2),

          ) ,

          suffixIcon:suffixIcon??const SizedBox() ,
          hintText: hintText,
          hintStyle: getMyRegularTextStyle(textColor: ColorManger.greyColor)

      ),
      validator:validate,
      style: getMyMediumTextStyle(textColor: Colors.black),
    );
  }
}
