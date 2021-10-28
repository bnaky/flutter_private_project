import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

/// Use cases will store all kinds of application logic.
/// In this case usecases will simply collect data from a repository.

/// To instantiate a use case, pass it a repository
/// e.g: usecase = GetConcreteNumberTrivia(NumberTriviaRepository())
/// usecase takes params as input and outputs a Number Trivia, or Failure

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
