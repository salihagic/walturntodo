import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoAddModelValidator extends ModelValidator {
  String? title(TodoAddModel? model) {
    return (model?.title).isNullOrEmpty ? translations.title_is_required : null;
  }

  @override
  bool validate(model) => ![
        title(model),
      ].any((x) => x != null);
}
