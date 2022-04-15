import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutterapi/services/dio_client.dart';
import 'package:flutterapi/services/json_placeholder_service.dart';

import '../models/todo_model.dart';

class HomeController extends ChangeNotifier{

final JsonPlacehoderService _service ;

HomeController(this._service);


var todos = <TodoModel>[];

Future <void>fetchAllTodos() async{

  todos = await _service.getTodos();
  notifyListeners();



}



}