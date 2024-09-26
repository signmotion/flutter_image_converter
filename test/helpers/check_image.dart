import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/widgets.dart' as widget;
import 'package:flutter_image_converter/flutter_image_converter.dart';
import 'package:image/image.dart' as image;
import 'package:test/test.dart';

void checkImage(
  image.Image image, {
  image.Image? other,
  int? width,
  int? height,
  int? bytes,
  int? pixels,
  int? channels,
}) {
  width = other?.width;
  height = other?.height;
  bytes = other?.lengthInBytes;
  pixels = other?.length;
  channels = other?.numChannels;

  if (width != null) {
    expect(image.width, width, reason: 'width');
  }
  if (height != null) {
    expect(image.height, height, reason: 'height');
  }
  if (bytes != null) {
    expect(image.lengthInBytes, bytes, reason: 'bytes');
  }
  if (pixels != null) {
    expect(image.length, pixels, reason: 'pixels');
  }
  if (channels != null) {
    expect(image.numChannels, channels, reason: 'channels');
  }
}

extension ImageConverterOnFileExt on File {
  Future<image.Image> get imageImage async => (await pngUint8List).imageImage;

  /// A sync version.
  image.Image get imageImageSync => pngUint8ListSync.imageImageSync;

  Future<ui.Image> get uiImage async => (await pngUint8List).uiImage;

  Future<widget.Image> get widgetImage async =>
      (await pngUint8List).widgetImage;

  /// A sync version.
  widget.Image get widgetImageSync => pngUint8ListSync.widgetImageSync;

  Future<widget.ImageProvider> get imageProvider async =>
      widget.FileImage(this);

  /// A sync version.
  widget.ImageProvider get imageProviderSync => widget.FileImage(this);

  /// Raw binary data from [File].
  Future<Uint8List> get uint8List => readAsBytes();

  /// Raw binary data from [File].
  /// A sync version.
  Uint8List get uint8ListSync => readAsBytesSync();

  /// Converts [uint8List] to BMP format if needed.
  Future<Uint8List> get bmpUint8List async => (await uint8List).bmpUint8List;

  /// A sync version.
  Uint8List get bmpUint8ListSync => uint8ListSync.bmpUint8ListSync;

  /// Converts [uint8List] to PNG format if needed.
  Future<Uint8List> get pngUint8List async => (await uint8List).pngUint8List;

  /// A sync version.
  Uint8List get pngUint8ListSync => uint8ListSync.bmpUint8ListSync;
}
