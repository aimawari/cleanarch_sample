import 'dart:io';

extension FileExtensions on File {
  double getFileSizeInMb() {
    int sizeInBytes = lengthSync();
    double sizeInMb = sizeInBytes / (1024 * 1024);
    return sizeInMb;
  }
}
