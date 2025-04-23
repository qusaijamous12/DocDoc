import 'package:either_dart/either.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/web_service.dart';
import '../../../login/model/login_response_model.dart';
import '../../model/register_request.dart';

class RegisterRepository{

  final ApiClient _apiClient;

  RegisterRepository(this._apiClient);


  Future<Either<ErrorHandler,LoginResponseModel>> register({required RegisterRequest registerRequest})async{

    try{
      final response=await _apiClient.register(registerRequest);
      return Right(response);
    }catch(error){

      return Left(ErrorHandler.handle(error));

    }

  }




}