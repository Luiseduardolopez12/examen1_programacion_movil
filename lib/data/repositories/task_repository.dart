import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Task {
  final int id;
  final String nombre;

  Task({required this.id, required this.nombre});

  // Método para convertir JSON a un objeto Task
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      nombre: json['nombre'],
    );
  }
}

class TaskRepository {
  // Método para cargar las tareas desde el archivo JSON
  Future<List<Task>> loadTasks() async {
    // Cargar el contenido de 'tasks.json' desde los assets
    final String response = await rootBundle.loadString('assets/tasks.json');
    // Decodificar el JSON
    final List<dynamic> data = json.decode(response);
    // Convertir cada elemento del JSON en una instancia de Task
    return data.map((json) => Task.fromJson(json)).toList();
  }
}