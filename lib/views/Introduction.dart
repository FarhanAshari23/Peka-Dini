// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:peka_dini/views/Home.dart';
import 'package:peka_dini/widgets/fonts.dart';
import 'package:lottie/lottie.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return IntroductionScreen(
      globalBackgroundColor: const Color(0xffE29AA3),
      dotsDecorator: const DotsDecorator(
        activeColor: Color(0xff4351a8),
      ),
      pages: [
        PageViewModel(
          decoration: PageDecoration(
              bodyTextStyle: bodyOpening, titleTextStyle: titleOpening),
          title: "Aplikasi Peka Dini",
          body:
              "Selamat Datang di Aplikasi\nPencegahan Pernikahan Dini, atau\ndisebut dengan Peka Dini ",
          image: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: 250,
              height: 250,
              child: Lottie.asset('assets/lotties/Women Cooking.json',
                  fit: BoxFit.contain),
            ),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
              bodyTextStyle: bodyOpening, titleTextStyle: titleOpening),
          title: "Bisa Memberikan Saran Pencegahan",
          body:
              "Aplikasi ini bisa memberikan saran\nterhadap para wanita agar\npernikahan dini tidak terjadi",
          image: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: mediaQueryWidth * 0.65,
              height: bodyHeight * 0.325,
              child: Lottie.asset('assets/lotties/married.json',
                  fit: BoxFit.contain),
            ),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
              bodyTextStyle: bodyOpening, titleTextStyle: titleOpening),
          title: "Bisa Memberikan Informasi Penanganan",
          body:
              "Namun apabila pernikahan dini\nsudah terjadi, pada aplikasi Peka\nDini juga menyediakan informasi\ncara penanganan ",
          image: SizedBox(
            width: mediaQueryWidth * 0.65,
            height: bodyHeight * 0.325,
            child: Lottie.asset('assets/lotties/Women Yoga.json',
                fit: BoxFit.contain),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
              bodyTextStyle: bodyOpening, titleTextStyle: titleOpening),
          title: "Tersedia Kontak Darurat",
          body:
              "Aplikasi Peka Dini menyediakan kontak darurat yang bisa dihubungi guna membantu ibu muda yang membutuhkan pertolongan",
          image: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: mediaQueryWidth * 0.65,
              height: bodyHeight * 0.325,
              child: Lottie.asset('assets/lotties/contact us.json',
                  fit: BoxFit.contain),
            ),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
              bodyTextStyle: bodyOpening, titleTextStyle: titleOpening),
          title: "KKN Universitas Diponegoro Tim II",
          body:
              "Aplikasi ini dipersembahkan oleh KKN tim II Undip untuk Desa Wlahar. Silakan gunakan aplikasi ini agar bisa menangani dan mengurangi terjadinya pernikahan dini",
          image: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: mediaQueryWidth * 0.65,
              height: bodyHeight * 0.325,
              child:
                  Image.asset('assets/pictures/Undip.png', fit: BoxFit.contain),
            ),
          ),
        ),
      ],
      showNextButton: false,
      showBackButton: false,
      done: Text(
        'Selesai',
        style: titleRecomend,
      ),
      onDone: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeView(),
          ),
        );
      },
    );
  }
}
