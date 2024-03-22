part of '../../flutter_image_converter.dart';

extension ImageConverterOnBase64StringExt on String {
  /// Recognizes PNG format.
  image.Image get imageImage => uint8List.imageImage;

  /// Recognizes PNG format.
  Future<ui.Image> get uiImage async => uint8List.uiImage;

  /// Recognizes PNG format.
  widget.Image get widgetImage => uint8List.widgetImage;

  /// Recognizes PNG format.
  widget.ImageProvider get imageProvider => uint8List.imageProvider;

  /// Use PNG format.
  String get base64String => uint8List.base64String;

  Uint8List get uint8List => base64Decode(this);
}
