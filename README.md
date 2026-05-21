# 📷 Detector de Bordas — Flutter

Aplicativo mobile desenvolvido em **Flutter** para captura de imagens utilizando a câmera do dispositivo, conversão automática para **tons de cinza (grayscale)** e aplicação de **detecção simples de bordas** usando diferença entre pixels vizinhos.

Projeto acadêmico com foco em:

- Desenvolvimento Mobile com Flutter
- Processamento Digital de Imagens
- Manipulação de pixels
- Uso da câmera em dispositivos Android
- Navegação entre telas

---

# 📱 Funcionalidades

✔ Captura de imagem pela câmera do dispositivo

✔ Exibição da imagem original

✔ Conversão automática para escala de cinza (Grayscale)

✔ Detecção básica de bordas utilizando diferença entre pixels vizinhos

✔ Exibição do resultado processado

✔ Interface simples e navegação entre telas

---

# 🎥 Demonstração

<img width="400" height="711" alt="bordasGIF_50porcento" src="https://github.com/user-attachments/assets/71f55edf-0650-433e-aeda-68c7849b3bc9" />

---

# 📂 Estrutura do Projeto

```text
lib/
│
├── main.dart
│
└── pages/
      ├── camera_page.dart
      └── result_page.dart
```

### main.dart

Responsável por:

- Inicializar o aplicativo
- Definir tela inicial

---

### camera_page.dart

Responsável por:

- Inicializar câmera
- Mostrar preview da câmera
- Capturar imagem
- Navegar para tela de resultado

---

### result_page.dart

Responsável por:

- Exibir imagem original
- Converter imagem para grayscale
- Aplicar detecção de bordas
- Mostrar resultado final

---

# ⚙ Tecnologias Utilizadas

Ambiente utilizado:

- Flutter 3.41.4
- Dart SDK 3.11.5
- Android SDK 36.1.0
- VS Code
- Android Studio Emulator

---

# 🧠 Funcionamento do Algoritmo

Após capturar a imagem:

## 1 — Conversão para Tons de Cinza

A imagem é convertida automaticamente:

```dart
final grayscale =
    img.grayscale(originalImage);
```

Resultado:

Imagem colorida → Imagem em escala de cinza

---

## 2 — Detecção de Bordas

São comparados pixels vizinhos:

```dart
final difference =
    (right - left).abs();
```

Quando a diferença ultrapassa um valor limite:

```dart
final edgeValue =
    difference > 25 ? 255 : 0;
```

O pixel é identificado como borda.

---

# 🎓 Objetivo Acadêmico

Projeto desenvolvido para praticar conceitos relacionados a:

- Flutter
- Desenvolvimento Mobile
- Processamento Digital de Imagens
- Manipulação de pixels
- Captura de imagens
- Navegação entre telas
- Estruturação de aplicações mobile

---

# 👩‍💻 Desenvolvido por

**Liane F. Heidemann**

---