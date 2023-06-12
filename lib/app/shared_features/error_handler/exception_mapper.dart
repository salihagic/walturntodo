import 'package:walturntodo/_all.dart';

EntityMapper<FirebaseException, BaseException> get exceptionMapper =>
    (firebaseException) => BaseException();
