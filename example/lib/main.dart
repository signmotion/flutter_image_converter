import 'package:flutter/material.dart';
import 'package:flutter_image_converter/flutter_image_converter.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: appBar,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: children),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      );

  AppBar get appBar => AppBar(
        title: const Text('Flutter Image Converter'),
        centerTitle: true,
      );

  List<Widget> get children => [
        const SizedBox(height: 24),
        ...demoImageProvider,
        ...demoUiImage,
        ...demoPackageImage,
        ...demoFileImage,
        ...demoBytesImage,
      ]
          .map((w) => Padding(padding: const EdgeInsets.all(12), child: w))
          .toList();

  List<Widget> get demoImageProvider => [
        const Text('From ImageProvider'),
        source(1).widgetImageSync,
      ];

  List<Widget> get demoPackageImage => [
        const Text('From package Image'),
        FutureBuilder(
          future: source(2).imageImage,
          builder: (_, snapshot) => snapshot.data == null
              ? const SizedBox()
              : snapshot.data!.widgetImageSync,
        ),
      ];

  /// See [ImageConverterOnFileExt].
  List<Widget> get demoFileImage => [
        const Text('From File Image, any format'),
        FutureBuilder(
          // same as a file
          future: source(3).uint8List,
          builder: (_, snapshot) => snapshot.data == null
              ? const SizedBox()
              : snapshot.data!.widgetImageSync,
        ),
      ];

  List<Widget> get demoBytesImage => [
        const Text('From raw bytes, any format'),
        FutureBuilder(
          future: source(4).uint8List,
          builder: (_, snapshot) => snapshot.data == null
              ? const SizedBox()
              : snapshot.data!.widgetImageSync,
        ),
      ];

  List<Widget> get demoUiImage => [
        const Text('From ui.Image'),
        FutureBuilder(
          future: source(5).uiImage,
          builder: (_, snapshot) => snapshot.data == null
              ? const SizedBox()
              : FutureBuilder(
                  future: snapshot.data!.widgetImage,
                  builder: (_, snapshot) => snapshot.data == null
                      ? const SizedBox()
                      : snapshot.data!),
        ),
      ];

  ImageProvider source(int n) => AssetImage('assets/$n.webp');
}
