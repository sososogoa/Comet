import 'package:responsive_framework/responsive_framework.dart';
import 'index.dart';

import 'main.controller.dart';
import 'main.initialize.dart';
import 'main.services.dart';

void main() {
  // 앱에서 필요한 서비스를 등록합니다.
  Get.put(MyService());

  // 앱을 초기화합니다.
  runApp(MyAppInitialize());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Comet',
      getPages: AppPages.routes,
      builder: (context, child) {
        Get.find<MainController>().updateScreen(context);
        return ResponsiveBreakpoints.builder(
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: Globals.textScaleFactor),
            child: child!,
          ),
          breakpoints: const [
            Breakpoint(start: 0, end: 540, name: MOBILE),
            Breakpoint(start: 541, end: 800, name: TABLET),
          ],
          // mediaQueryData: mediaQueryData = MediaQuery.of(context),
        );
      },
    );
  }
}
