import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/app_regx.dart';
import '../../../core/helpers/size_box.dart';
import '../../../core/helpers/utils/text_utils.dart';
import '../../../core/widgets/my_button.dart';
import '../../../core/widgets/my_text_field.dart';
import '../../login/ui/widgets/password_terms.dart';
import '../logic/cubit/register_cubit.dart';
import '../model/register_request.dart';

class RegisterDataForm extends StatefulWidget {
  const RegisterDataForm({super.key});

  @override
  State<RegisterDataForm> createState() => _RegisterDataFormState();
}

class _RegisterDataFormState extends State<RegisterDataForm> {
  bool isObsecure = false;
  final passwordController = TextEditingController();
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasANumber = false;
  bool atLeast8Charcter = false;
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setUpPasswordListener();
  }
  @override
  void dispose() {
    passwordController.dispose();


    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          MyTextField(
            hintText: 'name',
            textInputType: TextInputType.text,
            controller: nameController,
            validate: (value) {
              if (TextUtils.isEmpty(value)) {
                return 'Name is Required';
              }
              return null;
            },
          ),
          verticalSpace(10),
          MyTextField(
            hintText: 'email',
            textInputType: TextInputType.emailAddress,
            controller: emailController,
            validate: (value) {
              if (AppRegex.isValidEmail(emailController.text)) {
                return null;
              } else {
                return 'Please enter validate email';
              }
            },
          ),
          verticalSpace(10),
          MyTextField(
            hintText: 'phone',
            textInputType: TextInputType.phone,
            controller: phoneController,
            validate: (value) {
              if (TextUtils.isEmpty(value)) {
                return 'Phone is required';
              }
              return null;
            },
          ),
          verticalSpace(10),
          MyTextField(
            hintText: 'password',
            textInputType: TextInputType.phone,
            controller: passwordController,
            validate: (value) {
              if (hasLowerCase &&
                  hasUpperCase &&
                  hasSpecialCharacter &&
                  hasANumber &&
                  atLeast8Charcter) {
                return null;
              }
              return 'Please follow the password terms';
            },
          ),
          verticalSpace(10),
          MyTextField(
            hintText: 'confirm password',
            textInputType: TextInputType.phone,
            controller: confirmPasswordController,
            validate: (value) {
              if (passwordController.text == confirmPasswordController.text) {
                return null;
              }
              return 'The confirm password must be like password';
            },
          ),

          verticalSpace(10),
          PasswordTerms(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacter,
            hasANumber: hasANumber,
            atLeast8Charcter: atLeast8Charcter,
          ),

          verticalSpace(20),
          MyButton(
            onTap: () async {
              if(context.read<RegisterCubit>().formKey.currentState!.validate()){
                await  context.read<RegisterCubit>().register(
                  registerRequest: RegisterRequest(
                    phoneController.text,
                    passwordController.text,
                    emailController.text,
                    nameController.text,
                    '0',
                    passwordController.text,
                  ),
                );
              }
            },
            title: 'Register',
          ),
        ],
      ),
    );
  }

  void setUpPasswordListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowercase(passwordController.text);
        hasUpperCase = AppRegex.hasUppercase(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasANumber = AppRegex.hasNumber(passwordController.text);
        atLeast8Charcter = AppRegex.isAtLeast8Characters(
          passwordController.text,
        );
      });
    });
  }
}
