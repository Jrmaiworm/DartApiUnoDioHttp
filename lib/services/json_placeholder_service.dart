import 'package:dio/dio.dart';
import 'package:flutterapi/models/todo_model.dart';
import 'package:flutterapi/services/hhtp_client_interface.dart';

const url = "https://jsonplaceholder.typicode.com/todos";

class JsonPlacehoderService {
 
  final IHttpClient client;

  JsonPlacehoderService(this.client);

  Future<List<TodoModel>> getTodos() async {
    final body = await client.get(url);
    return(body as List).map(TodoModel.fromJson).toList();

    //o  Dio sempre retorna um json em data
  }
}
