import 'package:cleanarch_sample/features/pokemon_list/presentation/pages/pokemon_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/app_injections.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjections(); // initialize dependencies
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const PokemonPage();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
