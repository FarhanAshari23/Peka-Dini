import 'package:flutter/material.dart';
import 'package:peka_dini/widgets/fonts.dart';

// ignore: must_be_immutable
class ContactBox extends StatelessWidget {
  String numberHP;
  String jabatanDanNama;
  String gambarKontak;
  ContactBox({
    super.key,
    required this.jabatanDanNama,
    required this.numberHP,
    required this.gambarKontak,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      width: mediaQueryWidth * 0.7,
      height: bodyHeight * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffc67d7f),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          gambarKontak,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      jabatanDanNama,
                      style: nameContact,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      numberHP,
                      style: noContact,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
