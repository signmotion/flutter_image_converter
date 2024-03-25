# Flutter Image Converter

![Cover - FlutterImageConverter](https://raw.githubusercontent.com/signmotion/flutter_image_converter/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/pub/v/flutter_image_converter.svg?logo=dart&logoColor=00b9fc&color=blue)](https://pub.dartlang.org/packages/flutter_image_converter)
[![Code Size](https://img.shields.io/github/languages/code-size/signmotion/flutter_image_converter?logo=github&logoColor=white)](https://github.com/signmotion/flutter_image_converter)
[![Publisher](https://img.shields.io/pub/publisher/flutter_image_converter)](https://pub.dev/publishers/syrokomskyi.com)

[![Build Status](https://img.shields.io/github/actions/workflow/status/signmotion/flutter_image_converter/flutter-ci.yml?logo=github-actions&logoColor=white)](https://github.com/signmotion/flutter_image_converter/actions)
[![Pull Requests](https://img.shields.io/github/issues-pr/signmotion/flutter_image_converter?logo=github&logoColor=white)](https://github.com/signmotion/flutter_image_converter/pulls)
[![Issues](https://img.shields.io/github/issues/signmotion/flutter_image_converter?logo=github&logoColor=white)](https://github.com/signmotion/flutter_image_converter/issues)
[![Pub Score](https://img.shields.io/pub/points/flutter_image_converter?logo=dart&logoColor=00b9fc)](https://pub.dev/packages/flutter_image_converter/score)

Well-tested and easy-to-use Dart & Flutter image transformer package: ui, widgets, [image](https://pub.dev/packages/image), ImageProvider, bytes, and base64 string.
Works in any direction as extension.
**You no longer have to worry about writing code to convert images in different formats.**
Feel free to use it in your awesome project.

Share some ❤️ and star repo to support the project.

## Usage

### Raw bytes from File to Flutter Widget

```dart
File('1.jpg').widgetImage
```

Can detect [all formats](https://github.com/brendan-duncan/image/blob/main/doc/formats.md) from the package image.

### ImageProvider to UI Image

```dart
await AssetImage('1.jpg').uiImage
```

### Package Image to Flutter Widget

```dart
Image(...).widgetImage
```

### ImageProvider to PNG raw bytes

```dart
AssetImage('nature.webp').pngUint8List
```

### Any formatted raw bytes to Widget Image

```dart
bytes.widgetImage
```

### File to PNG raw bytes

```dart
File('nature.webp').pngUint8List
```

Supports the image providers:

- `AssetImage`
- `FileImage`
- `MemoryImage`
- `NetworkImage`
- any providers from [pub.dev](https://pub.dev/packages?q=image+provider) inherited from `ImageProvider`

See folders `example` and `test` for more use cases.

## Available Converters

```dart
import 'dart:ui' as ui;
import 'package:flutter/widgets.dart' as widget;
import 'package:image/image.dart' as image;
```

|               | extension name  |     | image.Image | ui.Image | widget.Image | ImageProvider | Uint8List |
| ------------- | --------------- | --- | :---------: | :------: | :----------: | :-----------: | --------- |
| image.Image   | `imageImage`    |     |             |    ✅    |      ✅      |      ✅       | ✅        |
| ui.Image      | `uiImage`       |     |     ✅      |          |      ✅      |      ✅       | ✅        |
| widget.Image  | `widgetImage`   |     |     ✅      |    ✅    |              |      ✅       | ✅        |
|               |                 |     |             |          |              |               |           |
| ImageProvider | `imageProvider` |     |     ✅      |    ✅    |      ✅      |               | ✅        |
|               |                 |     |             |          |              |               |           |
| Uint8List     | `uint8List`     |     |     ✅      |    ✅    |      ✅      |      ✅       |           |

## Screenshots

[<img src="https://raw.githubusercontent.com/signmotion/flutter_image_converter/master/images/screenshots/1.webp" width="600"/>](https://raw.githubusercontent.com/signmotion/flutter_image_converter/master/images/screenshots/1.webp)
[<img src="https://raw.githubusercontent.com/signmotion/flutter_image_converter/master/images/screenshots/2.webp" width="600"/>](https://raw.githubusercontent.com/signmotion/flutter_image_converter/master/images/screenshots/2.webp)
[<img src="https://raw.githubusercontent.com/signmotion/flutter_image_converter/master/images/screenshots/3.webp" width="600"/>](https://raw.githubusercontent.com/signmotion/flutter_image_converter/master/images/screenshots/3.webp)

## Welcome

Requests and suggestions are warmly welcome.

This package is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/flutter_image_converter). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/questions/tagged/flutter_image_converter).

## TODO

- Explane `Image`, `ImageProvider`, etc. [1](https://stackoverflow.com/a/56431615/963948)
- Detect formats provided `instantiateImageCodec`.
- Extensions for transform images to any formats?

Created [with ❤️](https://syrokomskyi.com)
