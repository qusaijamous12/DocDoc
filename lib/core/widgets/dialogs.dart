import 'package:flutter/material.dart';

import '../../features/login/logic/login_state.dart';
import '../padding_manger.dart';
import '../theming/app_color.dart';
import '../theming/text_style.dart';

Future myLoadingDialog(context){
 return showDialog(context: context, builder: (context){
    return const Center(child: CircularProgressIndicator(color: ColorManger.primaryColor,));
  });
}

Future showErrorDialog(context,String errorMessage){
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: PaddingManger.kPadding/2,
        children: [
          const Icon(Icons.info,color: Colors.red,),
          Text(
            errorMessage,
            style: getMyRegularTextStyle(textColor: Colors.black,fontSize: FontSizeManger.fs14),
          )
        ],
      ),
    );
  });
}