import 'package:cleanarch_sample/features/pokemon_list/domain/entities/pokemon.dart';

class PokemonModel extends PokemonEntity {
  PokemonModel({required super.name, required super.url});

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(name: json["name"], url: json["url"]);
  }
}
