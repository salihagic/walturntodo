import 'package:rest_api_client/exceptions/base_exception.dart';

///Derived exception class that represents
///any server error
class ServerErrorException extends BaseException {
  ServerErrorException({
    List<String> messages = const [],
  }) : super(
          messages: messages,
        );

  ///Method to be called in debugging mode to
  ///check the contents of the exception
  @override
  String toString() => 'NETWORK ERROR EXCEPTION: $messages';
}
