part of 'number_trivia_bloc.dart';

/// whch actions (a.k.a events) from the UI will need to trigger some logic?

abstract class NumberTriviaEvent extends Equatable {
  const NumberTriviaEvent();

  @override
  List<Object> get props => [];
}

class GetTriviaForConcreteNumber extends NumberTriviaEvent {
  final String numberString;
  // by following single responsiblity principle, we dont follow the following
  // int get number => int.parse(numberString);

  const GetTriviaForConcreteNumber({required this.numberString});

  @override
  List<Object> get props => [numberString];
}

class GetTriviaForRandomNumber extends NumberTriviaEvent {}
