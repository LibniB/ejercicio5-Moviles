import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Imagenes Deslizantes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurple, // Cambia el color de la appBar
      ),
      body: PageView(
        children: [
          buildPage(
            'https://i.pinimg.com/736x/1d/d4/d9/1dd4d9a8d61b61c1bcb6754bb67d236e.jpg',
            'Aprendiz',
            'Inscribete al Sena',
          ),
          buildPage(
            'https://i.pinimg.com/474x/04/c1/32/04c1324642209a7809b92dc7bdf76084.jpg',
            'Preparate',
            'El futuro es hoy',
          ),
          buildPage(
            'https://i.pinimg.com/474x/21/7c/20/217c20a14066c93ca2240e97a541d44c.jpg',
            'Programación de software',
            'Despierta tu mente',
          ),
        ],
      ),
    );
  }

  Widget buildPage(String imageUrl, String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(imageUrl, height: 200),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}