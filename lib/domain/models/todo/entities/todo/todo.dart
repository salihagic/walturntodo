class Todo {
  String id;
  bool isCompleted;
  String title;
  String? description;

  Todo({
    required this.id,
    required this.isCompleted,
    required this.title,
    this.description,
  });
}
