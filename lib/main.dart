import 'package:flutter/material.dart';
import 'pages/camera_page.dart';

// Função principal do aplicativo
void main() {
  runApp(const MyApp());
}

// Widget principal do projeto
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Título do aplicativo
      title: 'Detector de Bordas',

      // Tela inicial do app
      home: const CameraPage(),
    );
  }
}