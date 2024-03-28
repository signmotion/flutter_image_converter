part of '../../flutter_image_converter.dart';

extension ImageConverterOnWidgetImageExt on widget.Image {
  /// Constructs an [image.Image] from [widget.Image].
  Future<image.Image> get imageImage async => imageProvider.imageImage;

  /// Constructs an [ui.Image] from [widget.Image].
  Future<ui.Image> get uiImage async => imageProvider.uiImage;

  widget.ImageProvider get imageProvider => this.image;

  /// Use PNG format.
  Future<Uint8List> get uint8List async => imageProvider.pngUint8List;

  /// Converts [uint8List] to BMP format if needed.
  Future<Uint8List> get bmpUint8List async => (await uint8List).bmpUint8List;

  /// Converts [uint8List] to PNG format if needed.
  /// Alias for [uint8List].
  Future<Uint8List> get pngUint8List async => uint8List;

  /// Use PNG format.
  Future<ByteData> get pngByteData async => imageProvider.pngByteData;
}
