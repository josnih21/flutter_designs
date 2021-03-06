import 'package:designs_project/src/pages/basic_page.dart';
import 'package:designs_project/src/pages/buttons_page.dart';
import 'package:designs_project/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs App',
      initialRoute: 'buttons',
      routes: {
        'basic'   : (BuildContext context) => BasicPage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
        'buttons' : (BuildContext context) => ButtonssPage()
      },
    );
  }
}