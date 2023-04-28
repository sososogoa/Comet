import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main.controller.dart';

class MyAppInitialize extends StatelessWidget {
  const MyAppInitialize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (_) => MaterialApp(
        title: 'MyApp',
        home: Container(), // 홈 화면 위젯 작성
      ),
    );
  }
}