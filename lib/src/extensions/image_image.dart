part of '../../flutter_image_converter.dart';

extension ImageConverterOnImageImageExt on image.Image {
  Future<ui.Image> get uiImage async => uint8List.uiImage;

  widget.Image get widgetImage => uint8List.widgetImage;

  widget.ImageProvider get imageProvider => uint8List.imageProvider;

  /// Use PNG format.
  String get base64String => uint8List.base64String;

  /// Use PNG format.
  Uint8List get uint8List => image.encodePng(this);
}
