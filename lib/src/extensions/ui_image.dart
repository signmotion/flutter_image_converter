part of '../../flutter_image_converter.dart';

extension ImageConverterOnUiImageExt on ui.Image {
  /// Constructs an [image.Image] from [ui.Image].
  Future<image.Image> get imageImage async => (await pngUint8List).imageImage;

  Future<widget.Image> get widgetImage async =>
      (await pngUint8List).widgetImage;

  Future<widget.ImageProvider> get imageProvider async =>
      (await pngUint8List).imageProvider;

  /// Use PNG format.
  Future<Uint8List> get uint8List async => (await pngByteBuffer).asUint8List();

  /// Converts [uint8List] to BMP format if needed.
  Future<Uint8List> get bmpUint8List async => (await uint8List).bmpUint8List;

  /// Converts [uint8List] to PNG format if needed.
  /// Alias for [uint8List].
  Future<Uint8List> get pngUint8List async => uint8List;

  /// Use PNG format.
  Future<ByteBuffer> get pngByteBuffer async => (await pngByteData).buffer;

  /// Use PNG format.
  Future<ByteData> get pngByteData async {
    final bytes = await toByteData(format: ui.ImageByteFormat.png);
    if (bytes == null) {
      throw Exception("Can't decode UI image.");
    }

    return bytes;
  }
}
