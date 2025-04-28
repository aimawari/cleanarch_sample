import 'package:cleanarch_sample/core/exceptions/network_exception.dart';
import 'package:cleanarch_sample/core/models/result.dart';
import 'package:cleanarch_sample/features/pokemon_list/data/data_sources/remote/pokemon_remote_datasource.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/entities/pokemon.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/repositories/pokemon_repository.dart';
import 'package:dio/dio.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonRemoteDatasource _pokemonRemoteDatasource;

  PokemonRepositoryImpl(this._pokemonRemoteDatasource);

  @override
  Future<Result<List<PokemonEntity>>> getPokemonList() async {
    try {
      final result = await _pokemonRemoteDatasource.getPokemonList();
      return Result.ok(result);
    } on DioException catch (e) {
      return Result.err(NetworkException.fromDioError(e));
    } catch (e) {
      return Result.err(Exception("Unknown Exception: $e"));
    }
  }
}
