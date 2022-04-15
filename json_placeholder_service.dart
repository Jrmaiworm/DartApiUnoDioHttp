import 'package:dio/dio.dart';
import 'package:flutterapi/models/todo_model.dart';

import 'test/json_placeholder_service_test.dart';

class JsonPlacehoderService {
  final url = "https://jsonplaceholder.typicode.com/todos";
  final dio = Dio();

  JsonPlacehoderService(IhttpClientMock client);

  Future<List<TodoModel>> getTodos() async {
    final response = await Dio().get(url);
    final body = response.data as List;
    final todos = body
        .map((map) => TodoModel(
              userId: map['userId'],
              id: map['id'],
              title: map['title'],
              completed: map['completed'],
            ))
        .toList();

        return todos;
    //o  Dio sempre retorna um jason em data
  }
}
