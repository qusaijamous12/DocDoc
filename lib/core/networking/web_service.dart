
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/login/model/login_request_model.dart';
import '../../features/login/model/login_response_model.dart';
import '../../features/register/model/register_request.dart';
import 'api_constants.dart';
part 'web_service.g.dart';




@RestApi(baseUrl: '${ApiConstants.baseUrl}')
abstract class ApiClient{
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;


  @POST('${ApiConstants.login}')
  Future<LoginResponseModel> login(@Body() LoginRequest loginRequest);

  @POST('${ApiConstants.register}')
  Future<LoginResponseModel> register(@Body() RegisterRequest registerRequest);

}