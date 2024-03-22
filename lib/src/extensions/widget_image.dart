part of '../../flutter_image_converter.dart';

extension ImageConverterOnWidgetImageExt on widget.Image {
  /// Constructs an [image.Image] from [widget.Image].
  Future<image.Image> get imageImage async => imageProvider.imageImage;

  /// Constructs an [ui.Image] from [widget.Image].
  Future<ui.Image> get uiImage async => imageProvider.uiImage;

  widget.ImageProvider get imageProvider => this.image;

  Future<String> get base64String async => imageProvider.base64String;

  Future<Uint8List> get uint8List async => imageProvider.uint8List;

  Future<ByteData> get byteData async => imageProvider.byteData;
}
