import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_image_converter/flutter_image_converter.dart';
import 'package:test/test.dart';

import 'helpers/check_image.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final source = File('./test/data/h.jpg');
  final etalon = source.imageImageSync;

  test('imageImage', () {
    checkImage(
      etalon,
      width: 200,
      height: 120,
      bytes: 72000,
      pixels: 200 * 120,
      channels: 3,
    );
  });

  test('uiImage', () async {
    final r = await source.uiImage;
    checkImage(await r.imageImage, other: etalon);
  });

  test('widgetImage', () async {
    final r = source.widgetImageSync;
    checkImage(await r.imageImage, other: etalon);
  });

  test('imageProvider', () async {
    final r = source.imageProviderSync;
    checkImage(await r.imageImage, other: etalon);
  });

  test('uint8List', () {
    final r = source.uint8ListSync;
    checkImage(r.imageImageSync, other: etalon);
  });
}
