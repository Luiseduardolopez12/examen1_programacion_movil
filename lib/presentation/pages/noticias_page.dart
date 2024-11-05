import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget {
  const NoticiasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Noticias")),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                Image.asset('assets/images/local_image.jpg'),
                const Text("Noticia Local"),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.network('https://example.com/image.jpg'),
                const Text("Noticia Externa"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
