import 'package:flutter/material.dart';
import 'package:zakat_counter/zakat_emas.dart';
import 'package:zakat_counter/zakat_hewan.dart';
import 'package:zakat_counter/zakat_perdagangan.dart';
import 'package:zakat_counter/zakat_profesi_card.dart';
import 'package:zakat_counter/zakat_rikaz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(child: Text("Zakat Counter", style: TextStyle(fontSize: 40),)),
          ),
          elevation: 0,
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: Container(
              height: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //Tes(),
                  ZakatProfesiCard(),
                  ZakatEmasCard(),
                  ZakatPerdaganganCard(),
                  ZakatRikazCard(),
                  ZakatHewanCard(),
                ],
              ),
            ),
          ),
        ));
  }
}
