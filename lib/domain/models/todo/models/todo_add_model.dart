class TodoAddModel {
  String? title;

  TodoAddModel({
    this.title,
  });

  TodoAddModel copyWith({
    String? title,
  }) {
    return TodoAddModel(
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCompleted': false,
      'title': title,
    };
  }
}
