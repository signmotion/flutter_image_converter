part of '../../flutter_image_converter.dart';

extension ImageConverterOnImageProviderExt on widget.ImageProvider {
  /// Constructs an [image.Image] from [widget.ImageProvider].
  Future<image.Image> get imageImage async => (await uiImage).imageImage;

  /// Constructs an [ui.Image] from [widget.ImageProvider].
  Future<ui.Image> get uiImage async {
    final completer = Completer<dynamic>();
    resolve(const widget.ImageConfiguration()).addListener(
      widget.ImageStreamListener(
        (widget.ImageInfo info, bool _) => completer.complete(info),
      ),
    );

    return (await completer.future as widget.ImageInfo).image;
  }

  Future<widget.Image> get widgetImage async => widget.Image(image: this);

  /// A sync variant.
  widget.Image get widgetImageSync => widget.Image(image: this);

  /// Use PNG format.
  Future<Uint8List> get uint8List async =>
      (await pngByteData).buffer.asUint8List();

  /// Converts [uint8List] to BMP format if needed.
  Future<Uint8List> get bmpUint8List async => (await uint8List).bmpUint8List;

  /// Converts [uint8List] to PNG format if needed.
  /// Alias for [uint8List].
  Future<Uint8List> get pngUint8List async => uint8List;

  /// Use PNG format.
  Future<ByteData> get pngByteData async => (await uiImage).pngByteData;
}
