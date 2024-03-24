part of '../../flutter_image_converter.dart';

extension ImageConverterOnUint8ListExt on Uint8List {
  /// Recognizes the same formats as the package [image.Image].
  image.Image get imageImage {
    final decoder = image.findDecoderForData(this);
    if (decoder == null) {
      throw Exception('Decoder for image not found.');
    }

    final decoded = decoder.decode(this);
    if (decoded == null) {
      throw Exception("Can't decoded an image from $length bytes.");
    }

    return decoded;
  }

  /// Recognizes the same formats as the package [image.Image].
  Future<ui.Image> get uiImage async {
    final codec = await ui.instantiateImageCodec(pngImageBytes);
    final frameInfo = await codec.getNextFrame();

    return frameInfo.image;
  }

  /// Recognizes the same formats as the package [image.Image].
  /// Utilize [imageProvider].
  widget.Image get widgetImage => imageProvider.widgetImage;

  /// Recognizes the same formats as the package [image.Image].
  widget.ImageProvider get imageProvider => widget.MemoryImage(pngImageBytes);

  /// Use PNG format.
  String get base64String => base64Encode(pngImageBytes);

  /// Converts [Uint8List] to PNG format if needed.
  Uint8List get pngImageBytes =>
      image.PngDecoder().isValidFile(this) ? this : imageImage.uint8List;
}
