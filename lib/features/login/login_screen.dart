import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/padding_manger.dart';
import '../../core/theming/app_color.dart';
import '../../core/theming/text_style.dart';
import '../../core/widgets/my_button.dart';
import '../../core/widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  bool isObsecure = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: PaddingManger.kPadding,
            vertical: PaddingManger.kPadding,
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
              const SizedBox(height: PaddingManger.kPadding / 2),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in. ',
                style: getMyBoldTextStyle(textColor: ColorManger.greyTextLogin),
              ),
              const SizedBox(height: PaddingManger.kPadding * 1.5),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    MyTextField(
                      hintText: 'Email',
                      textInputType: TextInputType.emailAddress,
                      controller: _emailController,
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
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: PaddingManger.kPadding,
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: TextButton(onPressed: (){}, child: Text(
                  'Forgot Password?',
                  style: getMyMediumTextStyle(textColor: ColorManger.primaryColor),
                )),
              ),
              const SizedBox(
                height: PaddingManger.kPadding*2,
              ),
              MyButton(onTap: (){}, title: 'Login'),
              const SizedBox(
                height: PaddingManger.kPadding*3,
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: ColorManger.lightGrey,
                    ),
                  ),
                  Text(
                    '  Or sign in with  ',
                    style: getMyRegularTextStyle(textColor: ColorManger.lightGrey),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: ColorManger.lightGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: PaddingManger.kPadding*1.5,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                    ),
                    child: Image,
                  )

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account yet?',
                    style: getMyRegularTextStyle(textColor: Colors.black),
                  ),
                  TextButton(onPressed: (){}, child: Text(
                    'Sign Up',
                    style: getMyRegularTextStyle(textColor: ColorManger.primaryColor),
                  ))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
