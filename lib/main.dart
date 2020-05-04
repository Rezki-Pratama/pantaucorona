import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pantaucorona/home.dart';
import 'package:pantaucorona/provider/historyCase_provider.dart';
import 'package:pantaucorona/provider/indonesia_provider.dart';
import 'package:pantaucorona/provider/provinsi_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(new MyApp());
    });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: IndonesiaProvider()),
        ChangeNotifierProvider.value(value: ProvinsiProvider()),
        ChangeNotifierProvider.value(value: HistoryProvider())
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
