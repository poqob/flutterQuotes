import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          title: Text(
            'Falla Bizi Falcı Abi',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.yellowAccent,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
        ),
        body: isleyis(),
      ),
        debugShowCheckedModeBanner: false
    );
  }
}

class isleyis extends StatefulWidget {
  @override
  _isleyisState createState() => _isleyisState();
}


List<String> yanitlar = [
  'TIKLA FALIN GELSİN',
  'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
  'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
  'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
  'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
  'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
  'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
  'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
  'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
  'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
  'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
  'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
  'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
  'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
  'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
  'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
];



class _isleyisState extends State<isleyis> {


  int sonSans=0;


  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              'assets/falci.png',
              scale: 1.5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            height: 50,
            width: 300,
            child: FlatButton(
              onPressed: askYenileme,
              child: Row(
                children: [
                  Image.asset('assets/kalp.png',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(width: 55,),
                  Text('AŞK DURUMU',
                    style: GoogleFonts.firaCode(),
                  ),
                ],
              ),

            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            height: 50,
            width: 300,
            child: FlatButton(

              child: Row(
                children: [
                  Image.asset('assets/money.png',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(width: 55,),
                  Text('PARA DURUMU',
                    style: GoogleFonts.firaCode(),
                  ),
                ],
              ),
              onPressed: paraYenileme,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            height: 50,
            width: 300,
            child: FlatButton(
              onPressed: sansYenileme,
              child: Row(
                children: [
                  Image.asset('assets/sans.png',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(width: 55,),
                  Text('GÜNLÜK TAVSİYE',
                    style: GoogleFonts.firaCode(),
                  ),
                ],
              ),

            ),
          ),
          Container(

            height: 140,
            padding: EdgeInsetsDirectional.only(top: 15.0),
            width: 300,
            child: Center(
              heightFactor: 140,
              child: Container(
                height: 200,
                child:
                 Text(
                  yanitlar[sonSans],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,

                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void paraYenileme() {
    setState(() {
      for (int para = 7; para < 10; para++) {
       para=Random().nextInt(4)+7;
       print(para);
       sonSans=para;
       break;

      }

    }
    );
  }


    void askYenileme() {
      setState(() {
        for (int ask = 1; ask < 6; ask++) {
          ask=Random().nextInt(5)+1;
          print(ask);
          sonSans=ask;
          break;
        }
      }
      );
    }

      void sansYenileme() {
        setState(() {
          for (int sans = 11; sans < 16; sans++) {
            sans=Random().nextInt(5)+11;
            print(sans);
            sonSans=sans;
            break;

          }

        }
        );
      }
  }
