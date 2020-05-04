import 'package:flutter/material.dart';
import 'package:pantaucorona/provider/provinsi_provider.dart';
import 'package:pantaucorona/widget/cardList.dart';
import 'package:pantaucorona/widget/customText.dart';
import 'package:provider/provider.dart';

class PageCardList extends StatefulWidget {
  @override
  _PageCardListState createState() => _PageCardListState();
}

class _PageCardListState extends State<PageCardList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          Provider.of<ProvinsiProvider>(context, listen: false)
              .fetchProvinsi(),
      builder: (context, snapshot) {
        if (snapshot.connectionState ==
            ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          );
        } else {
          if (snapshot.error != null) {
            return Center(
              child: CustomText(
                text: 'Periksa koneksi anda',
              )
            );
          } else {
            if (snapshot.data == null) {
              return Center(
                child: Container(
                  alignment: Alignment.center,
                  child: ListView(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    children: <Widget>[
                      Icon(
                        Icons.access_alarms,
                        color: Colors.cyan,
                        size: 60,
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: CustomText(
                          text: 'Tidak ada data',
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Consumer<ProvinsiProvider>(
                  builder: (context, indonesia, child) =>
                      ListView.builder(
                          itemCount:
                              indonesia.itemsProvinsi.length,
                          itemBuilder: (contex, i) => CardList(
                                provinsi: indonesia
                                        .itemsProvinsi[i]
                                        .provinsi
                                        .provinsi ??
                                    'kosong',
                                positif: indonesia
                                        .itemsProvinsi[i]
                                        .provinsi
                                        .positif
                                        .toString() ??
                                    'kosong',
                                sembuh: indonesia
                                        .itemsProvinsi[i]
                                        .provinsi
                                        .sembuh
                                        .toString() ??
                                    'kosong',
                                meninggal: indonesia
                                        .itemsProvinsi[i]
                                        .provinsi
                                        .meninggal
                                        .toString() ??
                                    'kosong',
                              )));
            }
          }
        }
      },
    );
  }
}