import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:pantaucorona/model/historyCase_model.dart';

class HistoryProvider with ChangeNotifier {
  //mengambil list dari model riwayat kesehatan
  List<ModelHistory> _items = [];

  List<ModelHistory> get itemsHistory => _items;

  set itemsHistory(List<ModelHistory> value) {
    _items = value;
    //melakukan listener dari setiap perubahan data
    notifyListeners();
  }

  Future<void> fetchHistory() async {
    final response = await http.get('https://louislugas.github.io/covid_19_cluster/json/kasus-corona-indonesia.json');
    if (response.statusCode == 200) {
      final convertData = json.decode(response.body);
      final data = convertData['nodes'] as List<dynamic>;
      final List<ModelHistory> _newData = [];
      if (data == null) {
        return;
      } else {
        for (var i = 0; i < data.length; i++) {
          var addData = ModelHistory.fromJson(data[i]);
          print(addData);
          _newData.add(addData);
        }

        itemsHistory = _newData;

        return itemsHistory;
      }
    } else {
      return null;
    }
  }
}