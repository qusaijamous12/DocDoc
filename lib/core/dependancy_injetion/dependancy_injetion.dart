import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/logic/login_cubit.dart';
import '../../features/login/logic/login_repository.dart';
import '../../features/register/logic/cubit/register_cubit.dart';
import '../../features/register/logic/repo/repo.dart';
import '../networking/dio_factory.dart';
import '../networking/web_service.dart';

final getIt=GetIt.instance;

Future<void> setUpGetIt()async{
  Dio dio=await DioFactory.getDio();

  getIt.registerLazySingleton<ApiClient>(()=>ApiClient(dio));

  getIt.registerLazySingleton<LoginRepository>(()=>LoginRepository(getIt()));
  getIt.registerFactory<LoginCubit>(()=>LoginCubit(getIt()));

  getIt.registerLazySingleton<RegisterRepository>(()=>RegisterRepository(getIt()));

  getIt.registerFactory<RegisterCubit>(()=>RegisterCubit(getIt()));





}