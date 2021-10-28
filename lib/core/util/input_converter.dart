import 'package:dartz/dartz.dart';
import 'package:exporting_package/exporting_package.dart';

import '../error/failures.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str) {
    try {
      var integer = int.parse(str);
      if (integer < 0) throw const FormatException();
      integer = Calculator().addOne(integer);
      return Right(integer);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {}
