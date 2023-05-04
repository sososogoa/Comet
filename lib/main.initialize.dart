import 'index.dart';
import 'main.controller.dart';

class MyAppInitialize extends StatelessWidget {
  const MyAppInitialize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (_) => MaterialApp(
        title: 'MyApp',
        home: GetMaterialApp(
          initialRoute: Routes.app_about,
          getPages: AppPages.routes,
        ), // 홈 화면 위젯 작성
      ),
    );
  }
}