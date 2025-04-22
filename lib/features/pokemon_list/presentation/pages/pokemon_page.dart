import 'package:cleanarch_sample/features/pokemon_list/presentation/bloc/pokemon_bloc.dart';
import 'package:cleanarch_sample/features/pokemon_list/presentation/bloc/pokemon_event.dart';
import 'package:cleanarch_sample/features/pokemon_list/presentation/pages/pokemon_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cleanarch_sample/core/app_injections.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<PokemonBloc>()..add(LoadPokemonList()),
      child: const PokemonView(),
    );
  }
}
