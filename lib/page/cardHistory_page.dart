import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pantaucorona/provider/historyCase_provider.dart';
import 'package:pantaucorona/widget/cardHistory.dart';
import 'package:pantaucorona/widget/customText.dart';
import 'package:provider/provider.dart';

class PageHistory extends StatefulWidget {
  @override
  _PageHistoryState createState() => _PageHistoryState();
}

class _PageHistoryState extends State<PageHistory> {
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
                          future: Provider.of<HistoryProvider>(context,
                                  listen: false)
                              .fetchHistory(),
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
                                ));
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
                                  return Consumer<HistoryProvider>(
                                      builder: (context, history, child) =>
                                          ListView.builder(
                                              itemCount:
                                                  history.itemsHistory.length,
                                              itemBuilder: (context, i) =>
                                                  CardHistory(
                                                    kasus: history
                                                        .itemsHistory[i]
                                                        .kasus,
                                                    provinsi: history
                                                        .itemsHistory[i]
                                                        .provinsi,
                                                    status: history
                                                        .itemsHistory[i].status,
                                                    umur: history
                                                        .itemsHistory[i].umur,
                                                    jenisKelamin: history
                                                        .itemsHistory[i].gender,
                                                    pengumuman: history
                                                        .itemsHistory[i]
                                                        .pengumuman,
                                                    rs: history
                                                        .itemsHistory[i].rs,
                                                    penularan: history
                                                        .itemsHistory[i]
                                                        .penularan,
                                                    iconData: (history
                                                                .itemsHistory[i]
                                                                .status ==
                                                            'Dalam Perawatan')
                                                        ? FontAwesomeIcons.tired
                                                        : (history
                                                                    .itemsHistory[
                                                                        i]
                                                                    .status ==
                                                                'Sembuh')
                                                            ? FontAwesomeIcons
                                                                .smile
                                                            : (history
                                                                        .itemsHistory[
                                                                            i]
                                                                        .status ==
                                                                    'Meninggal')
                                                                ? FontAwesomeIcons
                                                                    .dizzy
                                                                : FontAwesomeIcons
                                                                    .times,
                                                    colorIcon: (history
                                                                .itemsHistory[i]
                                                                .status ==
                                                            'Dalam Perawatan')
                                                        ? Colors.yellow
                                                        : (history
                                                                    .itemsHistory[
                                                                        i]
                                                                    .status ==
                                                                'Sembuh')
                                                            ? Colors.green
                                                            : (history
                                                                        .itemsHistory[
                                                                            i]
                                                                        .status ==
                                                                    'Meninggal')
                                                                ? Colors
                                                                    .red[400]
                                                                : Colors.white,
                                                                colorStatus: (history
                                                                .itemsHistory[i]
                                                                .status ==
                                                            'Dalam Perawatan')
                                                        ? Colors.yellow
                                                        : (history
                                                                    .itemsHistory[
                                                                        i]
                                                                    .status ==
                                                                'Sembuh')
                                                            ? Colors.green
                                                            : (history
                                                                        .itemsHistory[
                                                                            i]
                                                                        .status ==
                                                                    'Meninggal')
                                                                ? Colors
                                                                    .red[400]
                                                                : Colors.white,
                                                  )));
                                }
                              }
                            }
                          },
                        );
  }
}