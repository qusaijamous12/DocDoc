import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/size_box.dart';
import '../../../core/padding_manger.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/app_color.dart';
import '../../../core/theming/text_style.dart';
import '../../../core/widgets/dialogs.dart';
import '../../../core/widgets/my_button.dart';
import '../../../core/widgets/my_text_field.dart';
import '../logic/login_cubit.dart';
import '../logic/login_state.dart';
import 'widgets/dont_have_an_account.dart';
import 'widgets/email_and_password_login.dart';
import 'widgets/or_sign_in_with.dart';
import 'widgets/sign_in_type.dart';
import 'widgets/terms_and_conditions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit,LoginState>(
        listener: (context,LoginState){
          if(LoginState is LoadingLoginState){
           myLoadingDialog(context);

          }
          if(LoginState is LoginSuccessState){
            context.pop();
            context.pushNamedAndRemoveUntil(Routes.homeScreen,predicate: (x)=>false);
          }
          if(LoginState is LoginErrorState){
            context.pop();
            showErrorDialog(context, LoginState.errorMessage);
          }

    },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: PaddingManger.kPadding,
              vertical: PaddingManger.kPadding*3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: getMyBoldTextStyle(
                    textColor: ColorManger.primaryColor,
                    fontSize: 25.sp,
                  ),
                ),

                verticalSpace(PaddingManger.kPadding / 2),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in. ',
                  style: getMyBoldTextStyle(textColor: ColorManger.greyTextLogin),
                ),
                verticalSpace(PaddingManger.kPadding * 1.5),

                const  EmailAndPasswordLogin(),


                verticalSpace(PaddingManger.kPadding*3),



               const  OrSignInWith(),

                verticalSpace(PaddingManger.kPadding*1.5),

              const   SignInType(),

                verticalSpace(PaddingManger.kPadding*2),

              const   TermsAndConditions(),

                verticalSpace(PaddingManger.kPadding),
               const DontHaveAnAccount()



              ],
            ),
          ),
        ),
      ),
    );
  }
}
