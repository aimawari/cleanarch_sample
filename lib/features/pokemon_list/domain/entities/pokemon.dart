class PokemonEntity {
  final String name;
  final String url;

  PokemonEntity({required this.name, required this.url});

  String get id => url.split("/").where((part) => part.isNotEmpty).last;
}
