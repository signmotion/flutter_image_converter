part of '../../flutter_image_converter.dart';

extension ImageConverterOnUiImageExt on ui.Image {
  /// Constructs an [image.Image] from [ui.Image].
  Future<image.Image> get imageImage async => (await uint8List).imageImage;

  Future<widget.Image> get widgetImage async => (await uint8List).widgetImage;

  Future<widget.ImageProvider> get imageProvider async =>
      (await uint8List).imageProvider;

  /// Use PNG format.
  Future<String> get base64String async => (await uint8List).base64String;

  /// Use PNG format.
  Future<Uint8List> get uint8List async => (await byteBuffer).asUint8List();

  /// Use PNG format.
  Future<ByteBuffer> get byteBuffer async => (await byteData).buffer;

  /// Use PNG format.
  Future<ByteData> get byteData async {
    final bytes = await toByteData(format: ui.ImageByteFormat.png);
    if (bytes == null) {
      throw Exception("Can't decode UI image.");
    }

    return bytes;
  }
}
