part of '../../flutter_image_converter.dart';

extension ImageConverterOnFileExt on File {
  image.Image get imageImage => pngUint8List.imageImage;

  Future<ui.Image> get uiImage async => pngUint8List.uiImage;

  widget.Image get widgetImage => pngUint8List.widgetImage;

  widget.ImageProvider get imageProvider => widget.FileImage(this);

  /// Raw binary data from [File].
  Uint8List get uint8List => readAsBytesSync();

  /// Converts [uint8List] to PNG format if needed.
  Uint8List get pngUint8List {
    final raw = uint8List;
    return image.PngDecoder().isValidFile(raw)
        ? raw
        : raw.imageImage.pngUint8List;
  }
}
