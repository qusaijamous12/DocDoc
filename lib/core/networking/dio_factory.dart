import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory{

  //Singleton class one instance in all the app !!!!

  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio()async{
    Duration timeOut=const Duration(seconds: 30);

    if(dio==null){
      dio=Dio();
      dio!..options.connectTimeout=timeOut
      ..options.receiveTimeout=timeOut;
      addDioInterceptor();
      return dio!;
    }else{
      return dio!;
    }


  }

  static void addDioInterceptor(){
    dio?.interceptors.add(

    PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseHeader: true
    )
    );

  }

}
