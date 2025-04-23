import 'package:flutter/material.dart';

import '../../../../core/padding_manger.dart';
import '../../../../core/theming/app_color.dart';
import '../../../../core/theming/text_style.dart';

class PasswordTerms extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasANumber;
  final bool atLeast8Charcter;




  const PasswordTerms({super.key, required this.hasLowerCase,required this.hasUpperCase,required this.hasSpecialCharacter,required this.hasANumber,required this.atLeast8Charcter});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: PaddingManger.kPadding/4,
      children: [
        buildPasswordTermsRow(title: 'At least 1 lowercase letter', passwordCase:hasLowerCase),
        buildPasswordTermsRow(title: 'At least 1 uppercase letter', passwordCase:hasUpperCase),
        buildPasswordTermsRow(title: 'At least 1 special character', passwordCase:hasSpecialCharacter),
        buildPasswordTermsRow(title: 'At least 1 number', passwordCase:hasANumber),
        buildPasswordTermsRow(title: 'At least 8 character long', passwordCase:atLeast8Charcter),

      ],
    );
  }

  Widget buildPasswordTermsRow({required String title, required bool passwordCase}) =>
      Row(
        spacing: PaddingManger.kPadding / 4,
        children: [
          const CircleAvatar(
            radius: 3,
            backgroundColor: ColorManger.greyColor,
          ),

          Text(
            title,
            style: getMyRegularTextStyle(
                textColor: Colors.black,
                fontSize: FontSizeManger.fs14,
                textDecoration:passwordCase? TextDecoration.lineThrough:null,
                decorationColor: passwordCase?Colors.green:Colors.transparent),
          )
        ],
      );
}
