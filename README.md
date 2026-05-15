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

<img width="800" height="1422" alt="bordasGIF" src="https://github.com/user-attachments/assets/b94a8a8f-ecba-46ae-ba74-3d640d1554fe" />

Estrutura recomendada:

```text
projeto/
│
├── assets/
│      demo.gif
│
├── lib/
│
└── README.md
```

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

Pacotes utilizados:

```yaml
dependencies:
  flutter:
    sdk: flutter

  image: ^4.2.0
  camera: ^0.11.0+2
  cupertino_icons: ^1.0.8
```

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

# 🔄 Fluxo do Aplicativo

```text
Abrir App
      ↓
Inicializar câmera
      ↓
Capturar imagem
      ↓
Mostrar imagem original
      ↓
Converter para grayscale
      ↓
Detectar bordas
      ↓
Mostrar resultado final
```

---

# 🔐 Permissões Android

Arquivo:

```text
android/app/src/main/AndroidManifest.xml
```

Permissão utilizada:

```xml
<uses-permission
    android:name="android.permission.CAMERA"/>
```

Essa permissão permite acessar a câmera do dispositivo para captura das imagens.

---

# 🚀 Como Executar

Clone o repositório:

```bash
git clone URL_DO_REPOSITORIO
```

Entre na pasta:

```bash
cd detector_de_bordas2
```

Instale dependências:

```bash
flutter pub get
```

Execute:

```bash
flutter run
```

---

# 📦 Dependências

Arquivo:

`pubspec.yaml`

Principais dependências:

```yaml
image: ^4.2.0
camera: ^0.11.0+2
```

### image

Utilizado para:

- leitura da imagem
- conversão grayscale
- manipulação de pixels
- geração da imagem processada

### camera

Utilizado para:

- acessar câmera do dispositivo
- capturar fotografias
- preview em tempo real

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

Graduanda em Ciência da Computação

---

# 📄 Licença

Projeto desenvolvido para fins acadêmicos.
