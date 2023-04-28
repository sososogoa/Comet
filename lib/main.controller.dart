import 'index.dart';

class MainController extends GetxController {
  void updateScreen(BuildContext context) {
    final width = Get.width;

    // 그리드의 갯수
    var gridCrossAxisCount = 2;
    if (width >= 900) {
      gridCrossAxisCount = 4;
    } else if (width >= 720) {
      gridCrossAxisCount = 4;
    } else if (width >= 540) {
      gridCrossAxisCount = 3;
    }
    Globals.textScaleFactor = width <= 550 ? 1.0 : MediaQuery.of(context).textScaleFactor;

    if (Globals.gridCrossAxisCount != gridCrossAxisCount) {
      Globals.gridCrossAxisCount = gridCrossAxisCount;
    }
  }
}