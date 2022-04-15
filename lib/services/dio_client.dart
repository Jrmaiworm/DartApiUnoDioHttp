import 'package:dio/dio.dart';
import 'package:flutterapi/services/hhtp_client_interface.dart';

class DioClient implements IHttpClient {
final Dio dio = Dio();

  @override
  Future<dynamic> get(String url) async {
   final response = await dio.get(url);

    return response.data;
  }


}