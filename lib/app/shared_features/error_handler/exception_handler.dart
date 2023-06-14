import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

abstract class ExceptionHandler {
  final StreamController<BaseException> exceptions = StreamController<BaseException>.broadcast();

  void handleFirebaseException(FirebaseException firebaseException);
  void dispose();
}

class ExceptionHandlerImpl implements ExceptionHandler {
  @override
  final StreamController<BaseException> exceptions = StreamController<BaseException>.broadcast();

  @override
  void handleFirebaseException(FirebaseException firebaseException) {
    exceptions.add(_mapFirebaseExceptionToBaseException(firebaseException));
  }

  BaseException _mapFirebaseExceptionToBaseException(FirebaseException firebaseException) => BaseException();

  @override
  void dispose() {
    exceptions.close();
  }
}
