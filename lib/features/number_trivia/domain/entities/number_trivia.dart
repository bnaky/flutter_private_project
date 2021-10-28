import 'package:equatable/equatable.dart';

/// Entity is related to the type of data we are going to use.
/// It is an object about which information must be kept.

abstract class NumberTrivia extends Equatable {
  final String text;
  final int number;

  const NumberTrivia({
    required this.text,
    required this.number,
  });

  @override
  List<Object> get props => [text, number];
}
