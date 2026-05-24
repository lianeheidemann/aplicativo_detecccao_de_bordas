# 📷 Detector de Bordas — Flutter

Aplicativo mobile desenvolvido em **Flutter** para captura de imagens pela câmera do dispositivo, conversão automática para **tons de cinza (grayscale)** e aplicação de uma técnica simples de **detecção de bordas** utilizando diferença entre pixels vizinhos.

Projeto desenvolvido para fins acadêmicos com foco em:

- Uso da câmera no Flutter
- Processamento digital de imagens
- Conversão para escala de cinza
- Detecção simples de bordas
- Navegação entre telas
- Manipulação de arquivos locais

---

## 📱 Funcionalidades

✔ Captura de imagem usando câmera do dispositivo

✔ Exibição da imagem original

✔ Conversão automática para escala de cinza (Grayscale)

✔ Detecção básica de bordas usando diferença entre pixels vizinhos

✔ Exibição do resultado processado

✔ Interface simples e navegação entre telas

---

## 🖼 Demonstração

Adicione aqui o GIF do aplicativo funcionando.

Exemplo:

```md
![Demonstração do App](assets/demo.gif)
```

Estrutura sugerida:

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

Resultado:

![Demonstração do App](assets/demo.gif)

---

## 📂 Estrutura do Projeto

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

Responsável por iniciar o aplicativo e definir a tela inicial.

### camera_page.dart

Responsável por:

- Inicializar câmera
- Exibir preview da câmera
- Capturar fotografia
- Navegar para tela de resultado

### result_page.dart

Responsável por:

- Exibir imagem original
- Gerar imagem grayscale
- Aplicar detecção de bordas
- Exibir resultado processado

---

## ⚙ Tecnologias utilizadas

- Flutter 3.41.4
- Dart
- Android SDK 36.1.0
- VS Code
- Android Studio Emulator

Pacotes utilizados:

```yaml
camera:
image:
```

---

## 🧠 Funcionamento do algoritmo

Após capturar a imagem:

### 1 — Conversão para Grayscale

A imagem é convertida para tons de cinza:

```dart
final grayscale =
    img.grayscale(originalImage);
```

---

### 2 — Detecção simples de bordas

São comparados pixels vizinhos:

```dart
final difference =
    (right - left).abs();
```

Quando a diferença ultrapassa determinado valor (threshold), o pixel é considerado uma borda:

```dart
final edgeValue =
    difference > 25 ? 255 : 0;
```

---

## 🚀 Como executar

Clone o repositório:

```bash
git clone URL_DO_REPOSITORIO
```

Entre na pasta:

```bash
cd nome-do-projeto
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

## 🔑 Permissões Android

Arquivo:

```text
android/app/src/main/AndroidManifest.xml
```

Permissão utilizada:

```xml
<uses-permission android:name="android.permission.CAMERA"/>
```

---

## 📸 Exemplo do fluxo do aplicativo

1. Abrir aplicativo

2. Capturar fotografia

3. Exibir imagem original

4. Gerar escala de cinza

5. Detectar bordas

6. Mostrar resultado final

---

## 🎓 Objetivo acadêmico

Este projeto foi desenvolvido para praticar conceitos relacionados a:

- Desenvolvimento Mobile
- Flutter
- Processamento Digital de Imagens
- Manipulação de pixels
- Uso da câmera em dispositivos Android
- Interface gráfica mobile

---

## 👩‍💻 Desenvolvido por

Liane F. Heidemann

Graduanda em Ciência da Computação# 📷 Detector de Bordas — Flutter

Aplicativo mobile desenvolvido em **Flutter** para captura de imagens pela câmera do dispositivo, conversão automática para **tons de cinza (grayscale)** e aplicação de uma técnica simples de **detecção de bordas** utilizando diferença entre pixels vizinhos.

Projeto desenvolvido para fins acadêmicos com foco em:

- Uso da câmera no Flutter
- Processamento digital de imagens
- Conversão para escala de cinza
- Detecção simples de bordas
- Navegação entre telas
- Manipulação de arquivos locais

---

## 📱 Funcionalidades

✔ Captura de imagem usando câmera do dispositivo

✔ Exibição da imagem original

✔ Conversão automática para escala de cinza (Grayscale)

✔ Detecção básica de bordas usando diferença entre pixels vizinhos

✔ Exibição do resultado processado

✔ Interface simples e navegação entre telas

---

## 🖼 Demonstração

Adicione aqui o GIF do aplicativo funcionando.

Exemplo:

```md
![Demonstração do App](assets/demo.gif)
```

Estrutura sugerida:

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

Resultado:

![Demonstração do App](assets/demo.gif)

---

## 📂 Estrutura do Projeto

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

Responsável por iniciar o aplicativo e definir a tela inicial.

### camera_page.dart

Responsável por:

- Inicializar câmera
- Exibir preview da câmera
- Capturar fotografia
- Navegar para tela de resultado

### result_page.dart

Responsável por:

- Exibir imagem original
- Gerar imagem grayscale
- Aplicar detecção de bordas
- Exibir resultado processado

---

## ⚙ Tecnologias utilizadas

- Flutter 3.41.4
- Dart
- Android SDK 36.1.0
- VS Code
- Android Studio Emulator

Pacotes utilizados:

```yaml
camera:
image:
```

---

## 🧠 Funcionamento do algoritmo

Após capturar a imagem:

### 1 — Conversão para Grayscale

A imagem é convertida para tons de cinza:

```dart
final grayscale =
    img.grayscale(originalImage);
```

---

### 2 — Detecção simples de bordas

São comparados pixels vizinhos:

```dart
final difference =
    (right - left).abs();
```

Quando a diferença ultrapassa determinado valor (threshold), o pixel é considerado uma borda:

```dart
final edgeValue =
    difference > 25 ? 255 : 0;
```

---

## 🚀 Como executar

Clone o repositório:

```bash
git clone URL_DO_REPOSITORIO
```

Entre na pasta:

```bash
cd nome-do-projeto
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

## 🔑 Permissões Android

Arquivo:

```text
android/app/src/main/AndroidManifest.xml
```

Permissão utilizada:

```xml
<uses-permission android:name="android.permission.CAMERA"/>
```

---

## 📸 Exemplo do fluxo do aplicativo

1. Abrir aplicativo

2. Capturar fotografia

3. Exibir imagem original

4. Gerar escala de cinza

5. Detectar bordas

6. Mostrar resultado final

---

## 🎓 Objetivo acadêmico

Este projeto foi desenvolvido para praticar conceitos relacionados a:

- Desenvolvimento Mobile
- Flutter
- Processamento Digital de Imagens
- Manipulação de pixels
- Uso da câmera em dispositivos Android
- Interface gráfica mobile

---

## 👩‍💻 Desenvolvido por

Liane F. Heidemann
