import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pantaucorona/widget/customText.dart';

class CardUtama extends StatelessWidget {
  final String title, positif, sembuh, meninggal;

  CardUtama(
      {this.title = "",
      this.positif = "",
      this.sembuh = "",
      this.meninggal = ""});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black.withOpacity(0.5),
      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CustomText(
                        color: Colors.white,
                        text: title,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomText(
                        color: Colors.white,
                        text: 'Positif',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height:5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.tired,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 4.0),
                          CustomText(
                            color: Colors.yellow,
                            text: positif,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomText(
                        color: Colors.white,
                        text: 'Sembuh',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height:5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.smile,
                            size: 20,
                            color: Colors.green,
                          ),
                          SizedBox(width: 4.0),
                          CustomText(
                            color: Colors.green,
                            text: sembuh,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomText(
                        color: Colors.white,
                        text: 'Meninggal',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height:5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.dizzy,
                            size: 20,
                            color: Colors.red[400],
                          ),
                          SizedBox(width: 4.0),
                          CustomText(
                            color: Colors.red[400],
                            text: meninggal,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
