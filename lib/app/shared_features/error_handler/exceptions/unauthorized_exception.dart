import 'package:rest_api_client/exceptions/base_exception.dart';

///Derived exception class that represents
///any server error
class UnauthorizedException extends BaseException {
  UnauthorizedException({
    List<String> messages = const [],
  }) : super(
          messages: messages,
        );

  ///Method to be called in debugging mode to
  ///check the contents of the exception
  @override
  String toString() => 'UNAUTHORIZED EXCEPTION: $messages';
}
