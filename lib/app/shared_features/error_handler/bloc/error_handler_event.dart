import 'package:abstract_bloc/abstract_bloc.dart';

abstract class ErrorHandlerEvent {}

class ErrorHandlerAddNewExceptionEvent extends ErrorHandlerEvent {
  final BaseException exception;

  ErrorHandlerAddNewExceptionEvent({required this.exception});
}
