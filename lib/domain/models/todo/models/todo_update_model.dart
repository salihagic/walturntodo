class TodoUpdateModel {
  String id;
  bool isCompleted;
  String title;

  TodoUpdateModel({
    required this.id,
    required this.isCompleted,
    required this.title,
  });

  TodoUpdateModel copyWith({
    String? id,
    bool? isCompleted,
    String? title,
  }) {
    return TodoUpdateModel(
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

  factory TodoUpdateModel.fromMap(Map<String, dynamic> map) {
    return TodoUpdateModel(
      id: map['id'] as String,
      isCompleted: map['isCompleted'] as bool,
      title: map['title'] as String,
    );
  }
}
