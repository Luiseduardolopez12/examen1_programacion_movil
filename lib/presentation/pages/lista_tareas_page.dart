import 'package:flutter/material.dart';
import '../../data/repositories/task_repository.dart';

class ListaTareasPage extends StatefulWidget {
  @override
  _ListaTareasPageState createState() => _ListaTareasPageState();
}

class _ListaTareasPageState extends State<ListaTareasPage> {
  late Future<List<Task>> _tasks;

  @override
  void initState() {
    super.initState();
    _tasks = TaskRepository().loadTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: FutureBuilder<List<Task>>(
        future: _tasks,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay tareas disponibles.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final task = snapshot.data![index];
                return ListTile(
                  title: Text(task.nombre),
                  leading: Icon(Icons.check_circle_outline),
                );
              },
            );
          }
        },
      ),
    );
  }
}
