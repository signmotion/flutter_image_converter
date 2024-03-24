part of '../../flutter_image_converter.dart';

extension ImageConverterOnFileExt on File {
  image.Image get imageImage => uint8List.imageImage;

  Future<ui.Image> get uiImage async => uint8List.uiImage;

  widget.Image get widgetImage => uint8List.widgetImage;

  widget.ImageProvider get imageProvider => widget.FileImage(this);

  String get base64String => uint8List.base64String;

  /// Use PNG format.
  Uint8List get uint8List => readAsBytesSync().pngImageBytes;
}
