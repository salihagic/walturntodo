import 'package:walturntodo/_all.dart';
import 'package:abstract_bloc/abstract_bloc.dart';

class ErrorHandlerBloc extends Bloc<ErrorHandlerEvent, ErrorHandlerState> {
  late StreamSubscription _exceptionsStreamSubscription;

  ErrorHandlerBloc({
    required ExceptionHandler exceptionsStream,
  }) : super(ErrorHandlerState(status: ErrorHandlerStateStatus.clean)) {
    on<ErrorHandlerAddNewExceptionEvent>(_addNewException);

    _exceptionsStreamSubscription =
        exceptionsStream.exceptions.stream.listen((exception) {
      add(ErrorHandlerAddNewExceptionEvent(exception: exception));
    });
  }

  Future<void> _addNewException(ErrorHandlerAddNewExceptionEvent event,
      Emitter<ErrorHandlerState> emit) async {
    emit(
      ErrorHandlerState(
        status: ErrorHandlerStateStatus.dirty,
        exception: event.exception,
      ),
    );
  }

  @override
  Future<void> close() {
    _exceptionsStreamSubscription.cancel();

    return super.close();
  }
}
