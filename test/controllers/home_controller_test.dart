import 'package:flutter/gestures.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapi/controllers/home_controller.dart';
import 'package:flutterapi/models/todo_model.dart';
import 'package:flutterapi/services/json_placeholder_service.dart';
import 'package:mocktail/mocktail.dart';

class JsonPlaceholderServiceMock extends Mock implements JsonPlacehoderService{}

void main() {

  test("deve preencher a lista corretamente", () async{
final service = JsonPlaceholderServiceMock();
when(() =>  service.getTodos()).thenAnswer((_) async => [TodoModel.stub()]);
    final controller = HomeController(service);
   await controller.fetchAllTodos();
   expect(controller.todos.length, 1);

  });
}