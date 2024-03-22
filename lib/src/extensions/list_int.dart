part of '../../flutter_image_converter.dart';

extension ImageConverterOnListIntExt on List<int> {
  image.Image get imageImage => uint8List.imageImage;

  Future<ui.Image> get uiImage async => uint8List.uiImage;

  widget.Image get widgetImage => uint8List.widgetImage;

  widget.ImageProvider get imageProvider => uint8List.imageProvider;

  String get base64String => uint8List.base64String;

  /// Use PNG format.
  Uint8List get uint8List => Uint8List.fromList(this).pngImageBytes;
}
