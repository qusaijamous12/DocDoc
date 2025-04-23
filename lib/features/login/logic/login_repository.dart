
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../../../core/networking/api_error_handler.dart';
import '../../../core/networking/web_service.dart';
import '../model/login_request_model.dart';
import '../model/login_response_model.dart';

class LoginRepository{

  ApiClient _apiClient;
  LoginRepository(this._apiClient);



  Future<Either<ErrorHandler,LoginResponseModel>> userLogin({required LoginRequest loginRequest})async{
    var response;
    try{
       response=await _apiClient.login(loginRequest);
      return Right(response);
    } catch(error){

      return Left(ErrorHandler.handle(error));
 
    }

  }

}