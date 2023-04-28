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

class Clearblue extends StatefulWidget {
  const Clearblue({Key? key}) : super(key: key);

  @override
  State<Clearblue> createState() => _ClearblueState();
}

class _ClearblueState extends State<Clearblue> {
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Clearblue',
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
        );
      },
    );
  }
}
