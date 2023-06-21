import 'package:flython/flython.dart';

class OpenCV extends Flython {
  static const cmdToGray = 1;

  Future<dynamic> toGray(String inputFile,
      String outputFile,) async {
    var command = {
      "cmd": cmdToGray,
      "input": inputFile,
      "output": outputFile,
    };
    return await runCommand(command);
  }
}

void main() async {
  final opencv = OpenCV();
  await opencv.initialize("python", ".main.py", false);
  //await opencv.toGray("./image.png", "./image_gray.png");
  opencv.finalize();
}