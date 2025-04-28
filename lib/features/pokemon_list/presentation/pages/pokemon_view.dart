import 'package:cleanarch_sample/features/pokemon_list/presentation/bloc/pokemon_bloc.dart';
import 'package:cleanarch_sample/features/pokemon_list/presentation/bloc/pokemon_state.dart';
import 'package:cleanarch_sample/shared/services/localization_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/pokemon_list.dart';

class PokemonView extends StatelessWidget {
  const PokemonView(this._localizationService, {super.key});

  final LocalizationService _localizationService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr("hello")),
        actions: [
          TextButton(
            onPressed: () {
              _localizationService.setLocale(
                LocalizationService.supportedLocales.first,
              );
            },
            child: Text("EN"),
          ),
          TextButton(
            onPressed: () {
              _localizationService.setLocale(
                LocalizationService.supportedLocales.last,
              );
            },
            child: Text("TH"),
          ),
        ],
      ),
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
