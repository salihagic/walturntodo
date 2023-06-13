import 'package:walturntodo/_all.dart';

mixin SafeExecution {
  Future<Result<T>> execute<T>(Future<Result<T>> Function() function) async {
    try {
      return await function();
    } on FirebaseException catch (e) {
      services.get<ExceptionHandler>().handleFirebaseException(e);

      return Result.error(exception: e);
    } catch (e) {
      debugPrint(e.toString());

      return Result.error(exception: Exception());
    }
  }
}
