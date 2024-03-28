part of '../../flutter_image_converter.dart';

extension ImageConverterOnImageImageExt on image.Image {
  Future<ui.Image> get uiImage async => (await pngUint8List).uiImage;

  Future<widget.Image> get widgetImage async =>
      (await pngUint8List).widgetImage;

  /// A sync variant.
  widget.Image get widgetImageSync => pngUint8ListSync.widgetImageSync;

  Future<widget.ImageProvider> get imageProvider async =>
      (await pngUint8List).imageProvider;

  /// A sync variant.
  widget.ImageProvider get imageProviderSync =>
      pngUint8ListSync.imageProviderSync;

  /// ! Use inner storage format of package `Image`.
  Future<Uint8List> get uint8List async => toUint8List();

  /// ! Use inner storage format of package `Image`.
  Uint8List get uint8ListSync => toUint8List();

  /// Converts [uint8List] to PNG format if needed.
  Future<Uint8List> get pngUint8List async => image.encodePng(this);

  /// A sync variant.
  Uint8List get pngUint8ListSync => image.encodePng(this);

  /// Converts [uint8List] to BMP format if needed.
  Future<Uint8List> get bmpUint8List async => image.encodeBmp(this);

  /// A sync variant.
  Uint8List get bmpUint8ListSync => image.encodeBmp(this);
}
