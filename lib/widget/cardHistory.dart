import 'package:flutter/material.dart';
import 'package:pantaucorona/widget/customText.dart';

class CardHistory extends StatelessWidget {
  final String kasus, provinsi, status, umur, jenisKelamin, pengumuman, rs, penularan;
  final Color colorIcon, colorStatus;
  final IconData iconData;

  CardHistory(
      {this.kasus,
        this.provinsi,
      this.status,
      this.umur,
      this.jenisKelamin,
      this.pengumuman,
      this.rs,
      this.penularan,
      this.colorIcon,
      this.colorStatus,
      this.iconData});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CustomText(
                          text: 'Kasus :',
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        CustomText(text: kasus, color: Colors.white),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        CustomText(
                          text: 'Provinsi :',
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        CustomText(text: provinsi, color: Colors.white),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        CustomText(
                          text: 'Status :',
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        CustomText(text: status, color: colorStatus),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        CustomText(
                          text: 'Umur :',
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        CustomText(text: umur, color: Colors.white),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        CustomText(
                          text: 'Jenis kelamin :',
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        CustomText(text: jenisKelamin, color: Colors.white),
                      ],
                    ),
                  ],
                ),
                Icon(iconData, size: 30, color: colorIcon),
              ],
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomText(text: 'Pengumuman :', color: Colors.white),
                CustomText(text: pengumuman, color: Colors.white),
              ],
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomText(text: 'Rumah sakit :', color: Colors.white),
                CustomText(text: rs, color: Colors.white),
              ],
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomText(text: 'Penularan :', color: Colors.white),
                CustomText(text: penularan, color: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}
