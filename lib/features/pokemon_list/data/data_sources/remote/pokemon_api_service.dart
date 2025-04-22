import 'package:cleanarch_sample/core/constants/api_constants.dart';
import 'package:cleanarch_sample/core/network/dio_client.dart';
import 'package:cleanarch_sample/features/pokemon_list/data/models/pokemon_model.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/entities/pokemon.dart';

class PokemonApiService {
  final DioClient _dioClient;

  const PokemonApiService(this._dioClient);

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
