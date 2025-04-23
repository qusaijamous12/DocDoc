import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/login_request_model.dart';
import 'login_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState>{
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository):super(InitialLoginState());


  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  var formKey = GlobalKey<FormState>();




  Future<void> login({required LoginRequest loginRequest})async{
    emit(LoadingLoginState());
    final response= await _loginRepository.userLogin(loginRequest: loginRequest);

    
    response.fold((error){
      emit(LoginErrorState(error.apiErrorModel.message??'Error'));
    }, (loginResponse){
      emit(LoginSuccessState());

    });

  }


}