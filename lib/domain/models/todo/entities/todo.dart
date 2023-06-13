class Todo {
  String id;
  bool isCompleted;
  String title;

  Todo({
    required this.id,
    required this.isCompleted,
    required this.title,
  });

  Todo copyWith({
    String? id,
    bool? isCompleted,
    String? title,
  }) {
    return Todo(
      id: id ?? this.id,
      isCompleted: isCompleted ?? this.isCompleted,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isCompleted': isCompleted,
      'title': title,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'] as String,
      isCompleted: map['isCompleted'] as bool,
      title: map['title'] as String,
    );
  }
}
