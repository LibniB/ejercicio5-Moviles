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
            'https://img.freepik.com/fotos-premium/joven-estudiante-mujer-cruzando-brazos-sonriente-relajado_1187-24795.jpg',
            'Aprendiz',
            'Inscribete al Sena',
          ),
          buildPage(
            'https://img.freepik.com/fotos-premium/mujer-joven-estudiante-sonriendo-apuntando-lado-mostrando-algo_1187-95247.jpg',
            'Preparate',
            'El futuro es hoy',
          ),
          buildPage(
            'https://cdn.businessinsider.es/sites/navi.axelspringer.es/public/media/image/2019/11/mujer-programando-diferentes-ordenadores.jpg?tf=3840x',
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