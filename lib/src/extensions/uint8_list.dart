part of '../../flutter_image_converter.dart';

extension ImageConverterOnUint8ListExt on Uint8List {
  /// Recognizes the same formats as the package [image.Image].
  Future<image.Image> get imageImage async => imageImageSync;

  /// A sync variant.
  image.Image get imageImageSync {
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
    final codec = await ui.instantiateImageCodec(await pngUint8List);
    final frameInfo = await codec.getNextFrame();

    return frameInfo.image;
  }

  /// Recognizes the same formats as the package [image.Image].
  /// Utilize [imageProvider].
  Future<widget.Image> get widgetImage async =>
      (await imageProvider).widgetImage;

  /// A sync variant.
  widget.Image get widgetImageSync => imageProviderSync.widgetImageSync;

  /// Recognizes the same formats as the package [image.Image].
  Future<widget.ImageProvider> get imageProvider async =>
      widget.MemoryImage(await pngUint8List);

  /// A sync variant.
  widget.ImageProvider get imageProviderSync =>
      widget.MemoryImage(pngUint8ListSync);

  /// Converts [Uint8List] to BMP format if needed.
  Future<Uint8List> get bmpUint8List async =>
      image.BmpDecoder().isValidFile(this)
          ? this
          : await (await imageImage).bmpUint8List;

  /// A sync variant.
  Uint8List get bmpUint8ListSync => image.BmpDecoder().isValidFile(this)
      ? this
      : imageImageSync.bmpUint8ListSync;

  /// Converts [Uint8List] to PNG format if needed.
  Future<Uint8List> get pngUint8List async =>
      image.PngDecoder().isValidFile(this)
          ? this
          : await (await imageImage).pngUint8List;

  /// A sync variant.
  Uint8List get pngUint8ListSync => image.PngDecoder().isValidFile(this)
      ? this
      : imageImageSync.pngUint8ListSync;
}
