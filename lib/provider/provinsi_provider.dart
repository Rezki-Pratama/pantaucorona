import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:pantaucorona/model/provinsi_model.dart';

class ProvinsiProvider with ChangeNotifier {
  //mengambil list dari model riwayat kesehatan
  List<ModelAttributes> _items = [];

  List<ModelAttributes> get itemsProvinsi => _items;

  set itemsProvinsi(List<ModelAttributes> value) {
    _items = value;
    //melakukan listener dari setiap perubahan data
    notifyListeners();
  }

  Future<void> fetchProvinsi() async {
    final response = await http.get('https://api.kawalcorona.com/indonesia/provinsi/');
    if (response.statusCode == 200) {
      final convertData = json.decode(response.body);
      final data = convertData;
      final List<ModelAttributes> _newData = [];
      if (data == null) {
        return null;
      } else {
        for (var i = 0; i < data.length; i++) {
          var addData = ModelAttributes.fromJson(data[i]);
          _newData.add(addData);
        }

        itemsProvinsi = _newData;

        return itemsProvinsi;
      }
    } else {
      return null;
    }
  }
}