part of '../../flutter_image_converter.dart';

extension ImageConverterOnListIntExt on List<int> {
  image.Image get imageImage => pngUint8List.imageImage;

  Future<ui.Image> get uiImage async => pngUint8List.uiImage;

  widget.Image get widgetImage => pngUint8List.widgetImage;

  widget.ImageProvider get imageProvider => pngUint8List.imageProvider;

  /// Use raw format from [List<int>].
  Uint8List get uint8List => Uint8List.fromList(this);

  /// Converts [uint8List] to PNG format if needed.
  Uint8List get pngUint8List => uint8List.pngUint8List;
}
