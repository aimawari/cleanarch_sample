import 'package:cleanarch_sample/features/pokemon_list/presentation/bloc/pokemon_bloc.dart';
import 'package:cleanarch_sample/features/pokemon_list/presentation/bloc/pokemon_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/pokemon_list.dart';

class PokemonView extends StatelessWidget {
  const PokemonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pokémon List")),
      body: BlocBuilder<PokemonBloc, PokemonState>(
        builder: (context, state) {
          if (state is PokemonLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PokemonLoaded) {
            return PokemonList(pokemon: state.pokemon);
          } else if (state is PokemonError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
