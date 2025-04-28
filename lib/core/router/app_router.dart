import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:cleanarch_sample/features/pokemon_list/presentation/pages/pokemon_page.dart';

final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const PokemonPage();
      },
    ),
  ],
);