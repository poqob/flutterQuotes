

import 'Soru.dart';

class Test01 {
  int _sorus = 1;

  List<Test> _soruBankasi = [
    Test(soru: '1.Titanic gelmiş geçmiş en büyük gemidir', cevap: false),
    Test(
        soru: '2.Dünyadaki tavuk sayısı insan sayısından fazladır',
        cevap: true),
    Test(soru: '3.Kelebeklerin ömrü bir gündür', cevap: false),
    Test(soru: '4.Dünya düzdür', cevap: false),
    Test(soru: '5.Kaju fıstığı aslında bir meyvenin sapıdır', cevap: true),
    Test(soru: '6.Fatih Sultan Mehmet hiç patates yememiştir', cevap: true),
    Test(soru: '7.Fransızlar 80 demek için, 4 - 20 der', cevap: false),
    Test(soru: '8.merve mal mı', cevap: false),
    Test(soru: '9.Ekvatorda yağış rejimi düzenlidir',cevap: true),
  ];

  String getSoruMetni() {
    if (secimler.length == _soruBankasi.length + 1) {
      return _soruBankasi[0].soru;
    } else {
      return _soruBankasi[_sorus - 1].soru;
    }
  }

  bool getCevap() {
    return _soruBankasi[_sorus - 1].cevap;
  }

  void sayiArtis() {
    if (_sorus < _soruBankasi.length) {
      _sorus++;
      // print('s');
      // print('sorus$_sorus');
      // print('banka${_soruBankasi.length}');
      // print('secimler ${secimler.length}');
    }
  }

  bool testBittiMi() {
    if (secimler.length == _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _sorus = 1;
    secimler = [];
    secimler2 = [];
  }

  int kacDoru() {
    return secimler2.length;
  }
}
