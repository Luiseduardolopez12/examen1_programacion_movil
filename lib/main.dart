import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'presentation/pages/lista_tareas_page.dart'; // Asegúrate de que esta ruta sea correcta
import 'presentation/pages/noticias_page.dart'; // Importa otras páginas que necesites

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
        builder: (context, state) => HomePage(), // Cambia esto por tu página principal
      ),
      GoRoute(
        path: '/lista_tareas',
        builder: (context, state) => ListaTareasPage(),
      ),
      // Agrega más rutas aquí si es necesario
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
            // Navegar a la página de lista de tareas
            context.go('/lista_tareas');
          },
          child: Text('Ir a Lista de Tareas'),
        ),
      ),
    );
  }
}

