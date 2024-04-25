import 'package:equatable/equatable.dart';

class Country extends Equatable {
  final String name;
  final String native;
  final String? capital;

  const Country({
    required this.name,
    required this.native,
    required this.capital,
  });

  @override
  List<Object?> get props => [name, native, capital];
}
