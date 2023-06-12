import 'package:rest_api_client/exceptions/base_exception.dart';

///Derived exception class that represents
///any validation error
class ValidationException extends BaseException {
  Map<String, List<String>>? validationMessages;

  ValidationException({
    List<String> messages = const [],
  }) : super(
          messages: messages,
        );

  ///Constructon for creating validation
  ///messages list separated by property
  ValidationException.multipleFields({
    this.validationMessages = const {},
  }) : super(
          messages: validationMessages != null
              ? validationMessages.entries
                  .map<List<String>>(
                    (mapEntry) => mapEntry.value,
                  )
                  .toList()
                  .expand<String>((list) => list)
                  .toList()
              : [],
        );

  ///Method to be called in debugging mode to
  ///check the contents of the exception
  @override
  String toString() => 'VALIDATION EXCEPTION: $messages';
}
