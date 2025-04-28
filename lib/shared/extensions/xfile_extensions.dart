import 'package:image_picker/image_picker.dart' show XFile;

extension XFileExtensions on XFile {
  Future<double> getFileSizeInMb() async {
    int sizeInBytes = await length();
    double sizeInMb = sizeInBytes / (1024 * 1024);
    return sizeInMb;
  }
}