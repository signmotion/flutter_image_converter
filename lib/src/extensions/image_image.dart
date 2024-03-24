part of '../../flutter_image_converter.dart';

extension ImageConverterOnImageImageExt on image.Image {
  Future<ui.Image> get uiImage async => pngUint8List.uiImage;

  widget.Image get widgetImage => pngUint8List.widgetImage;

  widget.ImageProvider get imageProvider => pngUint8List.imageProvider;

  /// ! Use inner storage format of package `Image`.
  Uint8List get uint8List => toUint8List();

  /// Converts [uint8List] to PNG format if needed.
  Uint8List get pngUint8List => image.encodePng(this);
}
