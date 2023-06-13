class Todo {
  String id;
  bool isCompleted;
  String title;

  Todo({
    required this.id,
    required this.isCompleted,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isCompleted': isCompleted,
      'title': title,
    };
  }
}
