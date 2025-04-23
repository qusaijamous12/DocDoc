import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/extensions.dart';
import '../../core/helpers/size_box.dart';
import '../../core/padding_manger.dart';

import '../../core/routing/routes.dart';
import '../../core/theming/app_color.dart';
import '../../core/theming/text_style.dart';

import '../../core/widgets/dialogs.dart';
import '../login/ui/widgets/or_sign_in_with.dart';
import '../login/ui/widgets/terms_and_conditions.dart';
import 'logic/cubit/register_cubit.dart';
import 'logic/cubit/register_state.dart';
import 'widgets/already_have_an_account.dart';
import 'widgets/register_data_form.dart';
import 'widgets/register_type.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit,RegisterState>(listener: (BuildContext context,RegisterState){
      if(RegisterState is LoadingRegister){
        myLoadingDialog(context);
      }
      if(RegisterState is RegisterSuccessState){
        context.pop();
        context.pushNamedAndRemoveUntil(Routes.loginScreen,predicate:(x)=>false);
      }
      if(RegisterState is RegisterFailedState){
        context.pop();
        showErrorDialog(context, RegisterState.error);
      }

    },child: Scaffold(
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
                'Create Account',
                style: getMyBoldTextStyle(
                  textColor: ColorManger.primaryColor,
                  fontSize: 25.sp,
                ),
              ),

              verticalSpace(PaddingManger.kPadding / 2),
              Text(
                'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                style: getMyBoldTextStyle(textColor: ColorManger.greyTextLogin),
              ),
              verticalSpace(PaddingManger.kPadding * 1.5),

              const RegisterDataForm(),


              verticalSpace(PaddingManger.kPadding*2),



              const OrSignInWith(),

              verticalSpace(PaddingManger.kPadding*1.5),

              const RegisterType(),

              verticalSpace(PaddingManger.kPadding*2),

              const TermsAndConditions(),

              verticalSpace(PaddingManger.kPadding),

              const AlreadyHaveAnAccount(),

            ],
          ),
        ),
      ),
    ),);
  }
}
