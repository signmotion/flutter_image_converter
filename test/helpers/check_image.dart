import 'package:image/image.dart' as image;
import 'package:test/test.dart';

void checkImage(
  image.Image image, {
  image.Image? other,
  int? width,
  int? height,
  int? bytes,
  int? pixels,
  int? channels,
}) {
  width = other?.width;
  height = other?.height;
  bytes = other?.lengthInBytes;
  pixels = other?.length;
  channels = other?.numChannels;

  if (width != null) {
    expect(image.width, width, reason: 'width');
  }
  if (height != null) {
    expect(image.height, height, reason: 'height');
  }
  if (bytes != null) {
    expect(image.lengthInBytes, bytes, reason: 'bytes');
  }
  if (pixels != null) {
    expect(image.length, pixels, reason: 'pixels');
  }
  if (channels != null) {
    expect(image.numChannels, channels, reason: 'channels');
  }
}
