import 'package:walturntodo/_all.dart';

abstract class ErrorHandlerEvent {}

class ErrorHandlerAddNewExceptionEvent extends ErrorHandlerEvent {
  final BaseException exception;

  ErrorHandlerAddNewExceptionEvent({required this.exception});
}
