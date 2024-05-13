import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:peka_dini/widgets/contacts.dart';
import 'package:peka_dini/widgets/fonts.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  List<String> dusunName = [
    'Dusun Buntrak',
    'Dusun Karangsari',
    'Dusun Tegalwangi',
    'Dusun Wlahar',
    'Dusun Kedungabad',
  ];

  String currentDropdown = 'Dusun';
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    Widget getBody() {
      if (currentDropdown == "Dusun Buntrak") {
        return GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: mediaQueryWidth * 0.03,
            mainAxisSpacing: bodyHeight * 0.01,
            mainAxisExtent: bodyHeight * 0.25,
          ),
          scrollDirection: Axis.vertical,
          children: [
            ContactBox(
              jabatanDanNama: 'Wasto / Kadus',
              numberHP: '085781625248',
              gambarKontak: 'assets/pictures/KontakBiru.png',
            ),
            ContactBox(
              jabatanDanNama: 'Tanti / Kader Posyandu',
              numberHP: '087709888918',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Harti / Kader Posyandu',
              numberHP: '085931372361',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Kasih / Kader Posyandu',
              numberHP: '083872261938',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Tarwi / Kader Posyandu',
              numberHP: '083863238501',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
          ],
        );
      } else if (currentDropdown == "Dusun Karangsari") {
        return GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: mediaQueryWidth * 0.03,
            mainAxisSpacing: bodyHeight * 0.01,
            mainAxisExtent: bodyHeight * 0.25,
          ),
          scrollDirection: Axis.vertical,
          children: [
            ContactBox(
              jabatanDanNama: 'Carlan / Kadus',
              numberHP: '087730669777',
              gambarKontak: 'assets/pictures/KontakBiru.png',
            ),
            ContactBox(
              jabatanDanNama: 'Darkini / Kader Posyandu',
              numberHP: '087733834250',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Khadafi / Kader Posyandu',
              numberHP: '082328119458',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Roslipah / Kader Posyandu',
              numberHP: '0882007712337',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Ridah / Kader Posyandu',
              numberHP: '083113817797',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Suerna / Kader Posyandu',
              numberHP: '088225474126',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Wasri / Kader Posyandu',
              numberHP: '087875071563',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
          ],
        );
      } else if (currentDropdown == "Dusun Tegalwangi") {
        return GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: mediaQueryWidth * 0.03,
            mainAxisSpacing: bodyHeight * 0.01,
            mainAxisExtent: bodyHeight * 0.25,
          ),
          scrollDirection: Axis.vertical,
          children: [
            ContactBox(
              jabatanDanNama: 'Saddam / Kadus',
              numberHP: '082325079693',
              gambarKontak: 'assets/pictures/KontakBiru.png',
            ),
            ContactBox(
              jabatanDanNama: 'Darumi / Kader Posyandu',
              numberHP: '081931725765',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Ani / Kader Posyandu',
              numberHP: '083861183118',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Rotiah / Kader Posyandu',
              numberHP: '082328245144',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Suin / Kader Posyandu',
              numberHP: '085952644235',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Wondo / Kader Posyandu',
              numberHP: '087818184355',
              gambarKontak: 'assets/pictures/KontakBiru.png',
            ),
            ContactBox(
              jabatanDanNama: 'Sawi / Kader Posyandu',
              numberHP: '087832813843',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Susi Wahyuni / Kader Posyandu',
              numberHP: '085225706813',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Susyanti Giantika / Kader Posyandu',
              numberHP: '083138737278',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Wanidah / Kader Posyandu',
              numberHP: '087732556473',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
          ],
        );
      } else if (currentDropdown == "Dusun Wlahar") {
        return GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: mediaQueryWidth * 0.03,
            mainAxisSpacing: bodyHeight * 0.01,
            mainAxisExtent: bodyHeight * 0.25,
          ),
          scrollDirection: Axis.vertical,
          children: [
            ContactBox(
              jabatanDanNama: 'Suntoro / Kadus',
              numberHP: '085939446694',
              gambarKontak: 'assets/pictures/KontakBiru.png',
            ),
            ContactBox(
              jabatanDanNama: 'Maulin / Kader Posyandu',
              numberHP: '087881111149',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Uus / Kader Posyandu',
              numberHP: '083839390645',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Lina / Kader Posyandu',
              numberHP: '083102001661',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Liptri / Kader Posyandu',
              numberHP: '088802660285',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Kailayu / Kader Posyandu',
              numberHP: '087787141872',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Puji / Kader Posyandu',
              numberHP: '087821585726',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Susilah / Kader Posyandu',
              numberHP: '083861237371',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
            ContactBox(
              jabatanDanNama: 'Winani / Kader Posyandu',
              numberHP: '085645942993',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
          ],
        );
      } else if (currentDropdown == "Dusun Kedungabad") {
        return GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: mediaQueryWidth * 0.03,
            mainAxisSpacing: bodyHeight * 0.01,
            mainAxisExtent: bodyHeight * 0.25,
          ),
          scrollDirection: Axis.vertical,
          children: [
            ContactBox(
              jabatanDanNama: 'Rasono / Kadus',
              numberHP: '085293168784',
              gambarKontak: 'assets/pictures/KontakBiru.png',
            ),
            ContactBox(
              jabatanDanNama: 'Yanti / Kader Posyandu',
              numberHP: '085229465285',
              gambarKontak: 'assets/pictures/KontakCewe.PNG',
            ),
          ],
        );
      }

      return const Center(child: SizedBox());
    }

    return Scaffold(
      backgroundColor: const Color(0xffE29AA3),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/pictures/maps.png',
                width: mediaQueryWidth * 0.9,
                height: bodyHeight * 0.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Silakan Pilih Lokasi Dusun yang Ingin Dihubungi :',
              style: location,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: mediaQueryWidth * 0.85,
              height: bodyHeight * 0.079,
              decoration: BoxDecoration(
                color: const Color(0xFFf7e1dd),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownSearch<String>(
                mode: Mode.MENU,
                showSelectedItem: true,
                items: dusunName,
                searchBoxDecoration: const InputDecoration(
                  fillColor: Colors.blue,
                ),
                hint: 'Pilih Nama Dusun',
                dropdownSearchDecoration: InputDecoration(
                  fillColor: Colors.pink,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    currentDropdown = value!;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            width: mediaQueryWidth * 0.9,
            height: bodyHeight * 0.4,
            child: getBody(),
          ),
        ],
      ),
    );
  }
}
