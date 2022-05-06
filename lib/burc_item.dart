import 'package:burc_rehberi_app/burc_detay.dart';
import 'package:flutter/material.dart';

import 'burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;

  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    var myColor = Theme.of(context).colorScheme.primary;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) =>
                      BurcDetay(secilenBurc: listelenenBurc))));
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResim,
              width: 64,
              height: 64,
            ),
            title: Text(listelenenBurc.burcAdi, style: myTextStyle.headline5),
            subtitle: Text(listelenenBurc.burcTarihi),
            trailing: Icon(Icons.arrow_forward, color: myColor),
          ),
        ),
      ),
    );
  }
}
