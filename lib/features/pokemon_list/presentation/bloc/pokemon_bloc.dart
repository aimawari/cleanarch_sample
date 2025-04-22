import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cleanarch_sample/core/utils/usecase.dart';
import 'package:cleanarch_sample/core/utils/result.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/usecases/pokemon_usecase.dart';

import 'pokemon_event.dart';
import 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final PokemonUseCase _pokemonUseCase;

  PokemonBloc(this._pokemonUseCase) : super(PokemonInitial()) {
    on<LoadPokemonList>((event, emit) async {
      emit(PokemonLoading());

      final result = await _pokemonUseCase.call(NoParams());

      switch (result) {
        case Ok(:final value):
          emit(PokemonLoaded(value));
        case Err(:final err):
          emit(PokemonError(err.toString()));
      }
    });
  }
}