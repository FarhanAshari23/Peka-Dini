import 'package:flutter/material.dart';
import 'package:peka_dini/widgets/artikel.dart';
import 'package:peka_dini/widgets/fonts.dart';

class PreventView extends StatefulWidget {
  const PreventView({super.key});

  @override
  State<PreventView> createState() => _PreventViewState();
}

class _PreventViewState extends State<PreventView> {
  int currentContent = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    Widget BoxPrevent(String nameBox, int index, int content) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
            currentContent = content;
          });
        },
        child: Container(
          width: mediaQueryWidth * 0.2,
          height: bodyHeight * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: selectedIndex == index
                ? const Color(0xff293475)
                : const Color(0xff5967bd),
          ),
          child: Center(
            child: Text(
              nameBox,
              style: namePrevent,
            ),
          ),
        ),
      );
    }

    // ignore: non_constant_identifier_names
    List<Widget> Article = [
      Column(
        children: [
          Container(
            width: mediaQueryWidth * 0.65,
            height: bodyHeight * 0.149,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink,
              image: const DecorationImage(
                image: AssetImage(
                  'assets/pictures/banner_tips.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 7,
              left: 10,
              right: 10,
            ),
            child: SizedBox(
              width: mediaQueryWidth * 0.9,
              height: bodyHeight * 0.22,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    "Tips pacaran sehat",
                    style: articleTitle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    artikel[0],
                    style: articleText,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            width: mediaQueryWidth * 0.65,
            height: bodyHeight * 0.149,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink,
              image: const DecorationImage(
                image: AssetImage(
                  'assets/pictures/pernikahan.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 7,
              left: 10,
              right: 10,
            ),
            child: SizedBox(
              width: mediaQueryWidth * 0.9,
              height: bodyHeight * 0.22,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    "Mitos dan Fakta Kehidupan Pernikahan",
                    style: articleTitle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    artikel[1],
                    style: articleText,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            width: mediaQueryWidth * 0.65,
            height: bodyHeight * 0.149,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink,
              image: const DecorationImage(
                image: AssetImage(
                  'assets/pictures/pernikahan_dini.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 7,
              left: 10,
              right: 10,
            ),
            child: SizedBox(
              width: mediaQueryWidth * 0.9,
              height: bodyHeight * 0.22,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    "Stigma Pernikahan Dini Menyenangkan, Benarkah?",
                    style: articleTitle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    artikel[2],
                    style: articleText,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xffE29AA3),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Center(
              child: Container(
                width: mediaQueryWidth * 0.9,
                height: bodyHeight * 0.235,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/pictures/banner_prevent.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: mediaQueryWidth * 0.915,
                height: bodyHeight * 0.51,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: Color(0xFFf7e1dd),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Pencegahan Pernikahan Dini',
                            style: nameContact,
                          ),
                        ),
                        SizedBox(
                          width: mediaQueryWidth * 0.9,
                          height: bodyHeight * 0.065,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: BoxPrevent('Tips-Tips', 0, 0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: BoxPrevent('Mitos', 1, 1),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: BoxPrevent('Stigma', 2, 2),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: SizedBox(
                            width: mediaQueryWidth * 0.9,
                            height: bodyHeight * 0.381,
                            child: Article[currentContent],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
