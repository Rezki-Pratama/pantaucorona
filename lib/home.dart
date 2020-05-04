import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pantaucorona/page/cardHistory_page.dart';
import 'package:pantaucorona/page/cardList_page.dart';
import 'package:pantaucorona/provider/historyCase_provider.dart';
import 'package:pantaucorona/provider/indonesia_provider.dart';
import 'package:pantaucorona/widget/cardUtama.dart';
import 'package:pantaucorona/widget/customText.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HistoryProvider>(context, listen: false).fetchHistory();
    Provider.of<IndonesiaProvider>(context, listen: false).fetchIndonesia();
    new Timer(new Duration(seconds: 5), () {
      setState(() {
        click = 1;
        animation = 1;
      });
    });
  }


  
  
  var click = 0, animation = 0, change = 0;

  @override
  Widget build(BuildContext context) {
    var home = Provider.of<IndonesiaProvider>(context).itemsIndonesia;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: <Widget>[
          FlareActor(
            'assets/flare/virus.flr',
            animation: (animation == 0)
                ? 'virus'
                : (animation == 1)
                    ? 'healing'
                    : (animation == 2) ? 'playhealing' : '',
            callback: (animationName) {
              print(animationName);
              if (animationName == 'healing') {
                setState(() {
                  animation = 2;
                });
              }
            },
            fit: BoxFit.cover,
          ),
          (click == 1)
              ? Padding(
                  padding: EdgeInsets.fromLTRB(
                      20, MediaQuery.of(context).size.width / 1.3, 20, 0),
                  child: PageCardList(),
                )
              : Container(),
          (click == 1)
              ? Padding(
                  padding: EdgeInsets.fromLTRB(
                      8, 8, 8, MediaQuery.of(context).size.height / 1.7),
                  child: CardUtama(
                    title: 'Indonesia',
                    positif: (home?.positif) ?? 'kosong',
                    sembuh: (home?.sembuh) ?? 'kosong',
                    meninggal: (home?.meninggal) ?? 'kosong',
                  ))
              : Container(),
        ],
      ),
    );
  }
}
