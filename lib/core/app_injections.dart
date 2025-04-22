import 'package:cleanarch_sample/features/pokemon_list/presentation/bloc/pokemon_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cleanarch_sample/features/pokemon_list/data/data_sources/remote/pokemon_api_service.dart';
import 'package:cleanarch_sample/features/pokemon_list/data/repositories/pokemon_repository_impl.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/repositories/pokemon_repository.dart';
import 'package:cleanarch_sample/features/pokemon_list/domain/usecases/pokemon_usecase.dart';

import 'network/dio_client.dart';

final sl = GetIt.instance;

Future<void> initInjections() async {
  // Core
  await initCoreInjections();

  // Feature
  await initPokemonFeatureInjections();
}

Future<void> initCoreInjections() async {
  sl.registerSingletonAsync(() async => await SharedPreferences.getInstance());
  sl.registerLazySingleton<DioClient>(() => DioClient());

  await sl.isReady<SharedPreferences>();
}

Future<void> initPokemonFeatureInjections() async {
  sl.registerFactory<PokemonApiService>(
    () => PokemonApiService(sl<DioClient>()),
  );
  sl.registerLazySingleton<PokemonRepository>(
    () => PokemonRepositoryImpl(sl<PokemonApiService>()),
  );
  sl.registerLazySingleton(() => PokemonUseCase(sl<PokemonRepository>()));
  sl.registerFactory(() => PokemonBloc(sl<PokemonUseCase>()));
}
