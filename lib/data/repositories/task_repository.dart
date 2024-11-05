import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Task {
  final int id;
  final String nombre;

  Task({required this.id, required this.nombre});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      nombre: json['nombre'],
    );
  }
}

class TaskRepository {
  Future<List<Task>> loadTasks() async {
    final String response = await rootBundle.loadString('assets/tasks.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Task.fromJson(json)).toList();
  }
}