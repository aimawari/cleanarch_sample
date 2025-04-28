import 'package:flutter/material.dart';

import 'package:cleanarch_sample/features/pokemon_list/domain/entities/pokemon.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({super.key, required this.pokemon});

  final List<PokemonEntity> pokemon;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pokemon.length,
      itemBuilder: (context, index) {
        final p = pokemon[index];
        return ListTile(
          title: Text(p.name),
          subtitle: Text("ID: ${p.id}"),
        );
      },
    );
  }
}
