import 'package:cleanarch_sample/features/pokemon_list/domain/entities/pokemon.dart';

abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoading extends PokemonState {}

class PokemonLoaded extends PokemonState {
  final List<PokemonEntity> pokemon;

  PokemonLoaded(this.pokemon);
}

class PokemonError extends PokemonState {
  final String message;

  PokemonError(this.message);
}
