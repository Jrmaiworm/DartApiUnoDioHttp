class TodoModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  TodoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  // TODO: implementreturn 
    static TodoModel fromJson(dynamic map){
     return TodoModel(
              userId: map['userId'],
              id: map['id'],
              title: map['title'],
              completed: map['completed'],
            );
    }
    static TodoModel stub() => TodoModel(userId: 1, id: 1, title: 'teste', completed: true);

}

//{
//   "userId": 1,
//    "id": 2,
//    "title": "quis ut nam facilis et officia qui",
//    "completed": false
//  },
