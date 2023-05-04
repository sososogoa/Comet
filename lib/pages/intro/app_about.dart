import 'package:card_swiper/card_swiper.dart';
import 'package:comet/index.dart';

class YourOwnPagination extends StatelessWidget {
  final int activeIndex;
  final int itemCount;

  const YourOwnPagination({
    Key? key,
    required this.activeIndex,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          itemCount,
          (index) {
            bool isCompleted = index <= activeIndex;
            return Expanded(
                child: Stack(
              children: [
                Positioned.fill(
                  bottom: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      color: isCompleted
                          ? Colors.deepPurpleAccent
                          : Colors.grey[400],
                    ),
                  ),
                ),
              ],
            ));
          },
        ),
      ),
    );
  }
}

class AppAbout extends StatefulWidget {
  const AppAbout({Key? key}) : super(key: key);

  @override
  State<AppAbout> createState() => _AppAboutState();
}

class _AppAboutState extends State<AppAbout> {
  final List<Map<String, String>> introData = [
    {'title': '임신을 준비하고 계신가요?', 'content': 'Oview-W로 스마트하게 배란일을 체크하세요.'},
    {
      'title': '타액(침)으로 배란 확인',
      'content': '배란일과 가임기간 확인이 가능합니다.',
    },
    {'title': '생리일과 생리기간을 체크', 'content': '다음 달 가임기간과 배란일을 예상할 수 있습니다.'},
    {
      'title': '나의 신체 상태 및 배란/생리 증상 기록',
      'content': '매일 나의 몸 상태를 기록하여, 건강 관리를 할 수 있습니다.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: 412,
      height: 892,
      child: Swiper(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            final Map<String, String> data = introData[index];
            final String title = data['title'] ?? '';
            final String content = data['content'] ?? '';
            return Container(
                color: Colors.red,
                child: Stack(
                  children: [
                    Center(
                      child: SizedBox(
                          width: 379,
                          height: 699,
                          // width: MediaQuery.of(context).size.width * 0.8,
                          // height: MediaQuery.of(context).size.height * 0.6,
                          child: Padding(
                              padding: const EdgeInsets.only(top: 60.0),
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(24.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 400.0,
                                          child: Image.asset(
                                            'assets/png/background_img.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 16.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text(title,
                                              style: const TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text(content,
                                              style: const TextStyle(
                                                  fontSize: 12.0)),
                                        ),
                                        if (index == 1)
                                          const Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text(
                                                "ⓘ 가임기인 경우 양치식물, 고사리 모양 패턴으로 결과가 확인됩니다. \nⓘ 배란 확인은 아침에 진행하는 것을 권장합니다.",
                                                style:
                                                    TextStyle(fontSize: 10.0)),
                                          ),
                                        if (index == 3)
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Get.toNamed(Routes
                                                    .app_buy); // 버튼 눌렀을 때 로직 작성
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.deepPurple,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                              child: const SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text("Oview-W 시작하기",
                                                      style: TextStyle(
                                                          fontSize: 14.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  )))),
                    ),
                    if (index != 3)
                      Positioned(
                        top: 75.0,
                        right: 16.0,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.app_buy); // 버튼 눌렀을 때 로직 작성
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                ));
          },
          pagination: SwiperPagination(
            margin: EdgeInsets.zero,
            builder: SwiperCustomPagination(
                builder: (BuildContext context, SwiperPluginConfig config) {
              return YourOwnPagination(
                activeIndex: config.activeIndex,
                itemCount: config.itemCount,
              );
            }),
          )),
    ));
  }
}
