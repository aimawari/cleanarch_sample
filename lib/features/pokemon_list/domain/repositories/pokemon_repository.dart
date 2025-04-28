import 'package:cleanarch_sample/core/models/result.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/entities/pokemon.dart';

abstract class PokemonRepository {
  Future<Result<List<PokemonEntity>>> getPokemonList();
}
