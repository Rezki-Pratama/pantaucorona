import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:pantaucorona/model/indonesia_model.dart';

class IndonesiaProvider with ChangeNotifier {
  //mengambil list dari model riwayat kesehatan
  ModelIndonesia _items;

  ModelIndonesia get itemsIndonesia => _items;

  set itemsIndonesia(ModelIndonesia value) {
    _items = value;
    //melakukan listener dari setiap perubahan data
    notifyListeners();
  }

  Future<ModelIndonesia> fetchIndonesia() async {
    final response = await http.get('https://api.kawalcorona.com/indonesia');
    if (response.statusCode == 200) {
      final convertData = json.decode(response.body);
      final data = convertData as List<dynamic>;
      ModelIndonesia _newData;
      if (data == null) {
        return null;
      } else {
        for (var i = 0; i < data.length; i++) {
          var addData = ModelIndonesia.fromJson(data[i]);
          _newData=addData;
        }

        itemsIndonesia = _newData;

        return itemsIndonesia;
      }
    } else {
      return null;
    }
  }
}