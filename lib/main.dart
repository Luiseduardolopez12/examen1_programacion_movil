import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'presentation/pages/lista_tareas_page.dart';
import 'presentation/pages/noticias_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Examen 1 Programación Móvil',
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      debugShowCheckedModeBanner: false,
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/lista_tareas',
        builder: (context, state) => ListaTareasPage(),
      ),
    ],
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Principal'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
          
            context.go('/lista_tareas');
          },
          child: Text('Ir a Lista de Tareas'),
        ),
      ),
    );
  }
}

