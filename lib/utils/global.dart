import 'package:oview_w/index.dart';
import 'package:http/http.dart' as http;

import '../main.controller.dart';

class Globals {
  static int gridCrossAxisCount = 0;
  static double? textScaleFactor;
}

late MainController mainController;
late final http.Client client;
