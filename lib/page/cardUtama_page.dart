import 'package:flutter/material.dart';
import 'package:pantaucorona/provider/indonesia_provider.dart';
import 'package:pantaucorona/widget/cardUtama.dart';
import 'package:provider/provider.dart';

class PageCardUtama extends StatefulWidget {
  @override
  _PageCardUtamaState createState() => _PageCardUtamaState();
}

class _PageCardUtamaState extends State<PageCardUtama> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<IndonesiaProvider>(context, listen: false).fetchIndonesia();
  }

  @override
  Widget build(BuildContext context) {
    var home = Provider.of<IndonesiaProvider>(context).itemsIndonesia;
    return Padding(
        padding: EdgeInsets.fromLTRB(
            8, 8, 8, MediaQuery.of(context).size.height / 1.7),
        child: CardUtama(
          title: 'Indonesia',
          positif: (home?.positif) ?? 'kosong',
          sembuh: (home?.sembuh) ?? 'kosong',
          meninggal: (home?.meninggal) ?? 'kosong',
        ));
  }
}
