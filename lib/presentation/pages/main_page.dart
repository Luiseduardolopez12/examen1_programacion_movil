import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Examen 1 Programación Móvil")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Noticias"),
              onTap: () {
                context.go('/');
              },
            ),
            ListTile(
              title: const Text("Lista de Tareas"),
              onTap: () {
                context.go('/tareas');
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text("Bienvenido a la app")),
    );
  }
}
