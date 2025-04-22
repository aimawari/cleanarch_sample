import 'package:cleanarch_sample/core/exceptions/network_exception.dart';
import 'package:cleanarch_sample/core/utils/result.dart';
import 'package:cleanarch_sample/features/pokemon_list/data/data_sources/remote/pokemon_api_service.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/entities/pokemon.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/repositories/pokemon_repository.dart';
import 'package:dio/dio.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonApiService _pokemonApiService;

  PokemonRepositoryImpl(this._pokemonApiService);

  @override
  Future<Result<List<PokemonEntity>>> getPokemonList() async {
    try {
      final result = await _pokemonApiService.getPokemonList();
      return Result.ok(result);
    } on DioException catch (e) {
      return Result.err(NetworkException.fromDioError(e));
    } catch (e) {
      return Result.err(Exception("Unknown Exception: $e"));
    }
  }
}
