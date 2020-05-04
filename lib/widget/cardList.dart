import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pantaucorona/widget/customText.dart';

class CardList extends StatelessWidget {
  final String provinsi, positif, sembuh, meninggal;
  CardList({
    this.provinsi,
    this.positif,
    this.sembuh,
    this.meninggal,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomText(
              text: provinsi,
              color: Colors.white
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomText(
                      text: 'Positif',
                      color: Colors.white
                    ),
                    SizedBox(height: 3),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                            FontAwesomeIcons.tired,
                            size: 15,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 4.0),
                        CustomText(
                          text: positif,
                          color: Colors.yellow,
                          fontSize: 20,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomText(
                      text: 'Sembuh',
                      color: Colors.white
                    ),
                    SizedBox(height: 3),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                            FontAwesomeIcons.smile,
                            size: 15,
                            color: Colors.green,
                          ),
                          SizedBox(width: 4.0),
                        CustomText(
                          text: sembuh,
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomText(
                      text: 'Meninggal',
                      color: Colors.white
                    ),
                    SizedBox(height: 3),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                         Icon(
                            FontAwesomeIcons.dizzy,
                            size: 15,
                            color: Colors.red[400],
                          ),
                          SizedBox(width: 4.0),
                        CustomText(
                          text: meninggal,
                          color: Colors.red[400],
                          fontSize: 20,
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
