import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

// Tela responsável por:
// - mostrar imagem original
// - gerar grayscale
// - detectar bordas
class ResultPage extends StatefulWidget {

  // Caminho da imagem capturada
  final String imagePath;

  const ResultPage({
    super.key,
    required this.imagePath,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  // Guarda imagem grayscale
  File? grayscaleImage;

  // Guarda imagem com bordas
  File? edgeImage;

  @override
  void initState() {
    super.initState();

    processImage();
  }

  // Processa toda a imagem
  Future<void> processImage() async {

    // Lê bytes da imagem original
    final originalBytes = await File(widget.imagePath).readAsBytes();

    // Decodifica imagem
    final originalImage = img.decodeImage(originalBytes);

    if (originalImage == null) return;

    // =========================
    // CONVERSÃO PARA GRAYSCALE
    // =========================

    final grayscale = img.grayscale(originalImage);

    final grayscalePath =
        '${File(widget.imagePath).parent.path}/grayscale.png';

    final grayscaleFile = File(grayscalePath)
      ..writeAsBytesSync(img.encodePng(grayscale));

    // =========================
    // DETECÇÃO DE BORDAS
    // =========================

    // Cria cópia da imagem
    final edgeDetected = img.Image.from(grayscale);

    // Percorre pixels da imagem
    for (int y = 1; y < grayscale.height - 1; y++) {

      for (int x = 1; x < grayscale.width - 1; x++) {

        // Pixel da esquerda
        final leftPixel = grayscale.getPixel(x - 1, y);

        // Pixel da direita
        final rightPixel = grayscale.getPixel(x + 1, y);

        // Intensidade esquerda
        final left = leftPixel.r.toInt();

        // Intensidade direita
        final right = rightPixel.r.toInt();

        // Diferença entre pixels vizinhos
        final difference = (right - left).abs();

        // Threshold simples
        final edgeValue = difference > 25 ? 255 : 0;

        // Define pixel final
        edgeDetected.setPixelRgb(
          x,
          y,
          edgeValue,
          edgeValue,
          edgeValue,
        );
      }
    }

    // Caminho da imagem processada
    final edgePath =
        '${File(widget.imagePath).parent.path}/edges.png';

    // Salva imagem com bordas
    final edgeFile = File(edgePath)
      ..writeAsBytesSync(img.encodePng(edgeDetected));

    // Atualiza interface
    setState(() {

      grayscaleImage = grayscaleFile;

      edgeImage = edgeFile;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        // Botão voltar automático
        title: const Text('Resultado'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 20),

            // =========================
            // IMAGEM ORIGINAL
            // =========================

            const Text(
              'Imagem Original',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Image.file(
              File(widget.imagePath),
              height: 250,
            ),

            const SizedBox(height: 30),

            // =========================
            // IMAGEM GRAYSCALE
            // =========================

            const Text(
              'Imagem em Tons de Cinza',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            grayscaleImage == null
                ? const CircularProgressIndicator()
                : Image.file(
                    grayscaleImage!,
                    height: 250,
                  ),

            const SizedBox(height: 30),

            // =========================
            // DETECÇÃO DE BORDAS
            // =========================

            const Text(
              'Detecção de Bordas',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            edgeImage == null
                ? const CircularProgressIndicator()
                : Image.file(
                    edgeImage!,
                    height: 250,
                  ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}