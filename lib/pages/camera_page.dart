import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'result_page.dart';

// Tela responsável pela câmera
class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {

  // Controlador da câmera
  CameraController? _cameraController;

  // Controla carregamento da câmera
  bool isLoading = true;

  // Guarda mensagens de erro
  String errorMessage = '';

  @override
  void initState() {
    super.initState();

    initializeCamera();
  }

  // Inicializa câmera do dispositivo
  Future<void> initializeCamera() async {

    try {

      // Obtém lista de câmeras disponíveis
      final cameras = await availableCameras();

      // Verifica se existe câmera
      if (cameras.isEmpty) {

        setState(() {
          errorMessage = 'Nenhuma câmera encontrada';
          isLoading = false;
        });

        return;
      }

      // Configura câmera traseira
      _cameraController = CameraController(
        cameras[0],
        ResolutionPreset.medium,
        enableAudio: false,
      );

      // Inicializa câmera
      await _cameraController!.initialize();

      setState(() {
        isLoading = false;
      });

    } catch (e) {

      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
    }
  }

  // Captura foto e abre tela de resultado
  Future<void> takePhoto() async {

    if (_cameraController == null) return;

    if (!_cameraController!.value.isInitialized) return;

    // Captura imagem
    final photo = await _cameraController!.takePicture();

    // Abre tela de resultado
    if (!mounted) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultPage(
          imagePath: photo.path,
        ),
      ),
    );
  }

  @override
  void dispose() {

    // Libera recursos da câmera
    _cameraController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // Tela de carregamento
    if (isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // Tela de erro
    if (errorMessage.isNotEmpty) {
      return Scaffold(
        body: Center(
          child: Text(errorMessage),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detector de Bordas'),
      ),

      body: CameraPreview(_cameraController!),

      floatingActionButton: FloatingActionButton(
        onPressed: takePhoto,
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}