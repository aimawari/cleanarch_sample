import 'package:cleanarch_sample/core/network/dio_client.dart';
import 'package:cleanarch_sample/features/pokemon_list/data/models/pokemon_model.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/entities/pokemon.dart';
import 'package:cleanarch_sample/shared/constants/api_constants.dart';

class PokemonRemoteDatasource {
  final DioClient _dioClient;

  const PokemonRemoteDatasource(this._dioClient);

  Future<List<PokemonEntity>> getPokemonList() async {
    try {
      final response = await _dioClient.dio.get(
        '${ApiConstants.baseUrl}/pokemon',
        queryParameters: {'limit': 10},
      );

      final List<PokemonModel> results =
          (response.data['results'] as List<dynamic>)
              .map((e) => PokemonModel.fromJson(e))
              .toList();

      return results;
    } catch (_) {
      rethrow;
    }
  }
}
