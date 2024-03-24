import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_image_converter/flutter_image_converter.dart';
import 'package:test/test.dart';

import 'helpers/check_image.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final source = File('./test/data/h.jpg').imageProvider;
  final etalon = await source.imageImage;

  test('imageImage', () async {
    final r = await source.imageImage;
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
    final r = source;
    checkImage(await r.imageImage, other: etalon);
  });

  test('uint8List', () async {
    final r = await source.uint8List;
    checkImage(r.imageImage, other: etalon);
  });
}
