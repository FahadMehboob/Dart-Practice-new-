class Todo {
  String? title;
  String? description;
  String? category;
  int? timestamp;
  String? priority;
  String? userId;
  bool? isCompleted;
  int? id;

  Todo(
      {this.title,
      this.description,
      this.category,
      this.timestamp,
      this.priority,
      this.userId,
      this.isCompleted,
      this.id});

  static List<Todo> fromJsonList(List<dynamic> jsonList) {
    List<Todo> todos = [];

    for (var jsonTodo in jsonList) {
      var jsonTodoMap = jsonTodo as Map<String, dynamic>;
      todos.add(Todo(
        title: jsonTodoMap['title']?.toString(),
        description: jsonTodoMap['description']?.toString(),
        category: jsonTodoMap['category']?.toString(),
        timestamp: int.tryParse(jsonTodoMap['timestamp'].toString()),
        priority: jsonTodoMap['priority']?.toString(),
        userId: jsonTodoMap['user_id']?.toString(),
        isCompleted: jsonTodoMap['isCompleted'] == true,
        id: int.tryParse(jsonTodoMap['id'].toString()),
      ));
    }

    return todos;
  }
}
