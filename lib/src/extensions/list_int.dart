part of '../../flutter_image_converter.dart';

extension ImageConverterOnListIntExt on List<int> {
  Future<image.Image> get imageImage async => (await pngUint8List).imageImage;

  /// A sync variant.
  image.Image get imageImageSync => pngUint8ListSync.imageImageSync;

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

  /// Use raw format from [List<int>].
  Future<Uint8List> get uint8List async => Uint8List.fromList(this);

  /// A sync variant.
  Uint8List get uint8ListSync => Uint8List.fromList(this);

  /// Converts [uint8List] to BMP format if needed.
  Future<Uint8List> get bmpUint8List async => (await uint8List).bmpUint8List;

  /// A sync variant.
  Uint8List get bmpUint8ListSync => uint8ListSync.bmpUint8ListSync;

  /// Converts [uint8List] to PNG format if needed.
  Future<Uint8List> get pngUint8List async => (await uint8List).pngUint8List;

  /// A sync variant.
  Uint8List get pngUint8ListSync => uint8ListSync.pngUint8ListSync;
}
