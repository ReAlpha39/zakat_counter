import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zakat_counter/math.dart';

class ZakatEmasCard extends StatefulWidget {
  @override
  _ZakatEmasCardState createState() => _ZakatEmasCardState();
}

class _ZakatEmasCardState extends State<ZakatEmasCard> {
  final formTextController = TextEditingController();
  String result;

  zakatProfesiCount() {
    setState(() {
      result = formTextController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Card(
        //LALU CARD KITA SET MARGINNYA 20 DARI CONTAINER
        margin: const EdgeInsets.all(20.0),
        elevation: 8, //KETEBALANNYA
        child: Padding(
          //KEMUDIAN COLUMN KITA SET LAGI PADDINGNYA DARI CARD
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //BAGIAN PERTAMA ADALAH TEKS FORM LOGIN
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: Center(
                    child: Text(
                      "Zakat Emas",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                //KEMUDIAN SEBUAH TEKS FIELD UNTUK MENGINPUT EMAIL
                TextField(
                  //DIMANA DEKORASINYA PADA SIFFUX BERARTI AKHIR BERISI ICON EMAIL BERWARNA PINK
                  controller: formTextController,
                  inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                  ],
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    //KETIKA INPUTAN TERSEBUT DIKLIK MAKA AKAN MEMBUAT UNDERLINE
                    focusedBorder: UnderlineInputBorder(
                      //DENGAN BORDER BERWARNA PINK
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                      ),
                    ),
                    labelText: "Masukkan gram emas anda ", //SET LABELNYA
                    //DAN SET STYLE DARI LABEL, CARA KERJANYA SAMA DENGNA TEXT STYLE KETIKA DISEMATKAN PADA TEXT() WIDGET
                    
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 40),
                    child: IconButton(
                        icon: Icon(Icons.arrow_downward),
                        onPressed: () => zakatProfesiCount()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: ListTile(
                      title: Chip(
                    label: result != null ? Zakat(result) : Text(""),
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Zakat extends StatelessWidget {
  Zakat(this.result);
  final String result;
  final ZakatCounter zakatCounter = ZakatCounter();

  @override
  Widget build(BuildContext context) {
    return Text(
      zakatCounter.zakatEmas(result),
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
