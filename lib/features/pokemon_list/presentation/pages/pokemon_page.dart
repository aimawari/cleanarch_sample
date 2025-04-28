import 'package:cleanarch_sample/features/pokemon_list/domain/usecases/pokemon_usecase.dart';
import 'package:cleanarch_sample/features/pokemon_list/presentation/bloc/pokemon_bloc.dart';
import 'package:cleanarch_sample/features/pokemon_list/presentation/bloc/pokemon_event.dart';
import 'package:cleanarch_sample/features/pokemon_list/presentation/pages/pokemon_view.dart';
import 'package:cleanarch_sample/shared/services/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cleanarch_sample/core/app_injections.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonUseCase = sl<PokemonUseCase>();
    final localizationService = sl<LocalizationService>();

    return BlocProvider(
      create: (_) => PokemonBloc(pokemonUseCase)..add(LoadPokemonList()),
      child: PokemonView(localizationService),
    );
  }
}
