import '../../index.dart';

part 'app_pages.routes.dart';

class AppPages {
  static final routes = [
    //* intro
    GetPage(
      name: Routes.app_about,
      page: () => const AppAbout(),
    ),
    GetPage(
        name: Routes.app_buy,
        page: () => const AppBuy()
    )
  ];
}
