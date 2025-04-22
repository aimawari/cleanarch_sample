import 'package:cleanarch_sample/core/utils/usecase.dart';
import 'package:cleanarch_sample/core/utils/result.dart';

import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

class PokemonUseCase extends UseCase<List<PokemonEntity>, NoParams> {
  final PokemonRepository _pokemonRepository;

  PokemonUseCase(this._pokemonRepository);

  @override
  Future<Result<List<PokemonEntity>>> call(NoParams _) =>
      _pokemonRepository.getPokemonList();
}
