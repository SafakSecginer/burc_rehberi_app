import 'package:burc_rehberi_app/burc.dart';
import 'package:burc_rehberi_app/burc_item.dart';
import 'package:flutter/material.dart';

import 'data/strings.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burç Listesi'),
      ),
      body: Center(
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return BurcItem(listelenenBurc: tumBurclar[index]);
            },
            itemCount: tumBurclar.length),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];

    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      //koc1.png degerini olusturmak
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + (i + 1).toString() + '.png';
      //koc_buyuk1.png degerini olusturmak
      var burcBuyukResim = Strings.BURC_ADLARI[i].toLowerCase() +
          '_buyuk' +
          (i + 1).toString() +
          '.png';

      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcDetay, burcKucukResim, burcBuyukResim);

      gecici.add(eklenecekBurc);
    }

    return gecici;
  }
}
