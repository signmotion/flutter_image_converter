import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_image_converter/flutter_image_converter.dart';
import 'package:test/test.dart';

import 'helpers/check_image.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final source = File('./test/data/h.jpg').imageImage;
  final etalon = source;

  test('imageImage', () {
    final r = source;
    checkImage(r, other: etalon);
  });

  test('uiImage', () async {
    final r = await source.uiImage;
    checkImage(await r.imageImage, other: etalon);
  });

  test('widgetImage', () async {
    final r = source.widgetImage;
    checkImage(await r.imageImage, other: etalon);
  });

  test('imageProvider', () async {
    final r = source.imageProvider;
    checkImage(await r.imageImage, other: etalon);
  });

  test('pngUint8List', () {
    final r = source.pngUint8List;
    checkImage(r.imageImage, other: etalon);
  });
}
