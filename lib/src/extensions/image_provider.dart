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
    final imageInfo = await completer.future as widget.ImageInfo;

    return imageInfo.image;
  }

  widget.Image get widgetImage => widget.Image(image: this);

  Future<String> get base64String async => (await uint8List).base64String;

  Future<Uint8List> get uint8List async =>
      (await byteData).buffer.asUint8List();

  Future<ByteData> get byteData async => (await uiImage).byteData;
}
