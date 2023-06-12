import 'package:rest_api_client/exceptions/base_exception.dart';

///Derived exception class that represents
///any server error
class ForbiddenException extends BaseException {
  ForbiddenException({
    List<String> messages = const [],
  }) : super(
          messages: messages,
        );

  ///Method to be called in debugging mode to
  ///check the contents of the exception
  @override
  String toString() => 'FORBIDDEN EXCEPTION: $messages';
}
