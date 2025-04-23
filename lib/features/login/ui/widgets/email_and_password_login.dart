import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regx.dart';
import '../../../../core/helpers/size_box.dart';
import '../../../../core/padding_manger.dart';
import '../../../../core/theming/app_color.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/my_button.dart';
import '../../../../core/widgets/my_text_field.dart';
import '../../logic/login_cubit.dart';
import '../../model/login_request_model.dart';
import 'password_terms.dart';

class EmailAndPasswordLogin extends StatefulWidget {
  const EmailAndPasswordLogin({super.key});

  @override
  State<EmailAndPasswordLogin> createState() => _EmailAndPasswordLoginState();
}

class _EmailAndPasswordLoginState extends State<EmailAndPasswordLogin> {
  bool isObsecure = false;
  late TextEditingController _passwordController;
  bool hasLowerCase=false;
  bool hasUpperCase=false;
  bool hasSpecialCharacter=false;
  bool hasANumber=false;
  bool atLeast8Charcter=false;


  @override
  void initState() {
    super.initState();
    _passwordController=context.read<LoginCubit>().passwordController;
    setUpPasswordListener();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          MyTextField(
            hintText: 'Email',
            textInputType: TextInputType.emailAddress,
            controller: context.read<LoginCubit>().emailController,
            validate: (value){
              if(value==null || value.isEmpty || !AppRegex.isValidEmail(value)){
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          const SizedBox(height: PaddingManger.kPadding),
          MyTextField(
            hintText: 'Password',
            textInputType: TextInputType.emailAddress,
            controller: _passwordController,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
              child: Icon(
                isObsecure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
            obsecureText: isObsecure,
            validate: (value){
              if(hasLowerCase && hasUpperCase &&hasSpecialCharacter &&hasANumber && atLeast8Charcter){

                return null;

              }else{
                return 'Please follow the password terms';
              }
            },
          ),
          verticalSpace(PaddingManger.kPadding / 2),
          PasswordTerms(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacter,
            hasANumber: hasANumber,
            atLeast8Charcter: atLeast8Charcter,
          ),

          verticalSpace(PaddingManger.kPadding),

          Align(
            alignment: AlignmentDirectional.topEnd,
            child: TextButton(onPressed: (){

            }, child: Text(
              'Forgot Password?',
              style: getMyMediumTextStyle(textColor: ColorManger.primaryColor),
            )),
          ),

          verticalSpace(PaddingManger.kPadding*2),

          MyButton(onTap: ()async{
            if(context.read<LoginCubit>().formKey.currentState!.validate()){
              await context.read<LoginCubit>().login(loginRequest: LoginRequest(email: context.read<LoginCubit>().emailController.text, password: _passwordController.text));

            }


          }, title: 'Login'),

        ],
      ),
    );
  }

  void setUpPasswordListener(){
    _passwordController.addListener((){
      setState(() {
        hasLowerCase=AppRegex.hasLowercase(_passwordController.text);
        hasUpperCase=AppRegex.hasUppercase(_passwordController.text);
        hasSpecialCharacter=AppRegex.hasSpecialCharacter(_passwordController.text);
        hasANumber=AppRegex.hasNumber(_passwordController.text);
        atLeast8Charcter=AppRegex.isAtLeast8Characters(_passwordController.text);
      });
    });
  }
}
