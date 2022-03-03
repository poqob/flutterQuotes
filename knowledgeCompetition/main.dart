import 'package:bilgitesti/test_veri.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Soru.dart';
import 'constants.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  Test01 test01 = Test01();

  void butonFonksiyonu(bool) {
    if (test01.testBittiMi() == true) {
      // set up the button
      Widget okButton = FlatButton(
        child: Text("başa dön"),
        onPressed: () {
          setState(() {
            Navigator.of(context).pop();
            test01.testiSifirla();
          });
        },
      );
      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text(" "),
        content: Text(
          "Doğru cevap: ${secimler2.length}\nYanlış cevap : ${secimler.length - secimler2.length}",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: [
          okButton,
        ],
      );
      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    } else {
      setState(() {
        if (test01.getCevap() == bool) {
          secimler.add(kDogruIkon);
          secimler2.add(kDogruIkon);
        } else {
          secimler.add(kYanlisIkon);
        }
      });
      test01.sayiArtis();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test01.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          children: secimler,
          spacing: 3,
          runSpacing: 1,
          alignment: WrapAlignment.center,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            butonFonksiyonu(false);
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            butonFonksiyonu(true);
                            print('secimler ${secimler.length}');
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
