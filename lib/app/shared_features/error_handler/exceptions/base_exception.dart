///Base class for any
///exception that might happen during
///http requests/responses
class BaseException implements Exception {
  ///List of error messages
  List<String> messages = [];

  BaseException({
    this.messages = const [],
  });

  ///Method to be called in debugging mode to
  ///check the contents of the exception
  @override
  String toString() => 'BASE EXCEPTION: $messages';
}
