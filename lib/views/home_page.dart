
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterapi/controllers/home_controller.dart';
import 'package:flutterapi/services/dio_client.dart';
import 'package:flutterapi/services/json_placeholder_service.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller =Modular.get<HomeController>();


  @override
  void initState (){
  super.initState();
  controller.fetchAllTodos();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: AnimatedBuilder(
        animation: controller, 
        builder: (context,widget){
          return ListView.builder(
            itemCount: controller.todos.length,
            itemBuilder: (context, index){
              final todo = controller.todos[index];
              return ListTile(
                title: Text(todo.title),
              );
            },
          
     );
  },
      ));
  }
}