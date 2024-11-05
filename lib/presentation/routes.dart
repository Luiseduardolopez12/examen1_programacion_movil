import 'package:go_router/go_router.dart';

import 'pages/noticias_page.dart';
import 'pages/lista_tareas_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => NoticiasPage(),
    ),
    GoRoute(
      path: '/tareas',
      builder: (context, state) => ListaTareasPage(),
    ),
    GoRoute(
      path: '/lista_tareas',
      builder: (context, state) => ListaTareasPage(),
),
  ],
);