# Flutter Image Converter

![Cover - FlutterImageConverter](https://raw.githubusercontent.com/signmotion/flutter_image_converter/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/pub/v/flutter_image_converter.svg?logo=dart&logoColor=00b9fc&color=blue)](https://pub.dartlang.org/packages/flutter_image_converter)
[![Code Size](https://img.shields.io/github/languages/code-size/signmotion/flutter_image_converter?logo=github&logoColor=white)](https://github.com/signmotion/flutter_image_converter)
[![Publisher](https://img.shields.io/pub/publisher/flutter_image_converter)](https://pub.dev/publishers/syrokomskyi.com)

![SDK version](https://badgen.net/pub/sdk-version/flutter_image_converter)
![Supported platforms](https://badgen.net/pub/flutter-platform/flutter_image_converter)
![Supported SDKs](https://badgen.net/pub/dart-platform/flutter_image_converter)

[![Build Status](https://img.shields.io/github/actions/workflow/status/signmotion/flutter_image_converter/flutter-ci.yml?logo=github-actions&logoColor=white)](https://github.com/signmotion/flutter_image_converter/actions)
[![Pull Requests](https://img.shields.io/github/issues-pr/signmotion/flutter_image_converter?logo=github&logoColor=white)](https://github.com/signmotion/flutter_image_converter/pulls)
[![Issues](https://img.shields.io/github/issues/signmotion/flutter_image_converter?logo=github&logoColor=white)](https://github.com/signmotion/flutter_image_converter/issues)
[![Pub Score](https://img.shields.io/pub/points/flutter_image_converter?logo=dart&logoColor=00b9fc)](https://pub.dev/packages/flutter_image_converter/score)

[Well-tested](https://github.com/signmotion/flutter_image_converter/tree/master/test) and easy-to-use Dart & Flutter image transformer package: ui, widgets, [image](https://pub.dev/packages/image), ImageProvider, bytes, and base64 string.
Works in any direction as extension.
**You no longer have to worry about writing code to convert images in different formats.**
Feel free to use it in your awesome project.

Share some ❤️ and star repo to support the project.

_If you write an article about **FlutterImageConverter** or any of [these](https://pub.dev/packages?q=publisher%3Asyrokomskyi.com&sort=updated) packages, let me know and I'll post the URL of the article in the **README** 🤝_

## 🚀Usage

### Raw bytes from File to Widget Image

```dart
File('1.jpg').widgetImage
```

Can detect [all formats](https://github.com/brendan-duncan/image/blob/main/doc/formats.md) from the package image.

### ImageProvider to UI Image

```dart
await AssetImage('1.jpg').uiImage
```

### Package Image to Widget Image

```dart
Image(...).widgetImage
```

### Any formatted raw bytes to Widget Image

```dart
bytes.widgetImage
```

### File to PNG raw bytes

```dart
File('nature.webp').pngUint8List
```

### File to BMP raw bytes

```dart
File('nature.webp').bmpUint8List
```

### ImageProvider to PNG raw bytes

```dart
AssetImage('nature.webp').pngUint8List
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

## Thanks

While working on projects, I meet people who make the project better with their outsider and professional view. I want to write down their names here..... and I'd be happy to add your name as well.

⭐ [eibaan](https://reddit.com/user/eibaan)

## Whats New

Look at [changelog](https://pub.dev/packages/flutter_image_converter/changelog).

## 🙋‍♀️🙋‍♂️Welcome

Requests and suggestions are warmly welcome.

Contributions are what make the open-source community such a great place to learn, create, and be inspired.

If this is your first contribution, I'll leave you with some of the best links I've found: they will help you get started or/and become even more efficient.

- [Guide to making a first contribution](https://github.com/firstcontributions/first-contributions). Many languages.
- [How to Contribute to Open Source](https://opensource.guide/how-to-contribute). Longread for deep diving for first-timers and for veterans.
- [Summer Guide from Google](https://youtu.be/qGTQ7dEZXZc).

The package **FlutterImageConverter** is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/flutter_image_converter). Feel free to report issues
or create a pull-request there.

And here is a curated list of how you can help:

- Documenting the undocumented. Whenever you come across a class, property, or method within our codebase that you're familiar with and notice it lacks documentation, kindly spare a couple of minutes to jot down some helpful notes for your fellow developers.
- Refining the code. While I'm aware it's primarily my responsibility to refactor the code, I wholeheartedly welcome any contributions you're willing to make in this area. Your insights and improvements are appreciated!
- Constructive code reviews. Should you discover a more efficient approach to achieve something, I'm all ears. Your suggestions for enhancement are invaluable.
- Sharing your examples. If you've experimented with our use cases or have crafted some examples of your own, feel free to add them to the `example` directory. Your practical insights can enrich our resource pool.
- Fix typos/grammar mistakes.
- Report bugs and scenarios that are difficult to implement.
- Implement new features by making a pull-request (look below).

## 🕧TODO (perhaps)

Once you start using the **FlutterImageConverter**, it will become easy to choose the functionality to contribute. But if you already get everything you need from this package but have some free time, let me write here what I have planned:

- Explane `Image`, `ImageProvider`, etc. [1](https://stackoverflow.com/a/56431615/963948)
- Check out the Web platform.
- Detect formats provided `instantiateImageCodec`.
- Converters to `File`? `fileBmpUint8ListSync`, `filePngUint8ListSync`... Auto extension.
- SVG?
- IconData?
- Transform images to any formats?

It's just a habit of mine: writing down ideas that come to mind while working on a project. I confess that I rarely return to these notes. But now, hopefully, even if you don't have an idea yet, these notes will help you choose the suitable feature and become a contributor to the open-source community.

Created [with ❤️](https://syrokomskyi.com)
