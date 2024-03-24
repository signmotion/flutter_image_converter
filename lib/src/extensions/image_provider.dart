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

  widget.Image get widgetImage => widget.Image(image: this);

  /// Use PNG format.
  Future<Uint8List> get uint8List async =>
      (await pngByteData).buffer.asUint8List();

  /// Alias for [uint8List].
  Future<Uint8List> get pngUint8List => uint8List;

  /// Use PNG format.
  Future<ByteData> get pngByteData async => (await uiImage).pngByteData;
}
