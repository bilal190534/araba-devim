import 'package:arabaprojem_app/color_filters.dart';
import 'package:flutter/material.dart';
import 'package:arabaprojem_app/giris.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Araba Uygulamam',
      routes: {
        "/": (context) => Login(),
      },
    ),
  );
}

class Anasayfam extends StatefulWidget {
  final username;
  const Anasayfam({Key key, @required this.username}) : super(key: key);
  @override
  _AnasayfamState createState() => _AnasayfamState();
}

class _AnasayfamState extends State<Anasayfam> {
  int _bottomIndex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _bottomIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Anasayfa"),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text("Hakkımızda"),
            backgroundColor: Colors.black,
          ),
        ],
        onTap: (index) {
          setState(() {
            _bottomIndex = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:
            Text(widget.username == null ? "Kullanıcı Yok" : widget.username),
        elevation: 4.0,
      ),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _bottomIndex = index;
          });
        },
        controller: _pageController,
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: deprecated_member_use
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AudiSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/audi.jpg"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 10.0,
                        height: 20.0,
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BmwSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/bmw.jpg"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                        height: 20.0,
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CitroenSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/citroen.jpg"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "AUDİ",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 79.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "BMW",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 60.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "CITROEN",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 50.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DaciaSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/dacia.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FiatSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/fiat.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FordSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/ford.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "DACİA",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 77.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "FİAT",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 58.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "FORD",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 65.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HondaSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/honda.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HyundaiSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/hyundai.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => JeepSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/jeep.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "HONDA",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 70.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "HYUNDAİ",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 38.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "JEEP",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 50.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KiaSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/kia.jpg"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MercedesSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/mercedes.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MiniSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/mini.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "KİA",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 85.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "MERCEDES",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 50.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "MİNİ",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 42.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MitsubishiSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/mitsubishi.jpg"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NissanSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/nissan.jpg"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OpelSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/opel.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "MİTSUBİSHİ",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 56.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "NİSSAN",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 28.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "OPEL",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 55.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PeugeotSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/peugeot.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RenaultSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/renault.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeatSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/seat.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "PEUGEOT",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 65.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "RENAULT",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 34.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "SEAT",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 49.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SkodaSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/skoda.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuzukiSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/suzuki.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ToyotaSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/toyota.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "SKODA",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 74.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "SUZUKİ",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 48.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "TOYOTA",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 43.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VolkswagenSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/volkswagen2.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        elevation: 4.0,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VolvoSayfam()),
                        ),
                        child: Container(
                          child: Image(
                            image: AssetImage("assets/volvo.png"),
                            width: 50.0,
                            height: 70.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "VOLKSWAGEN",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 12,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 105.0,
                        ),
                      ),
                      Container(
                        child: Text(
                          "VOLVO",
                          style: TextStyle(
                            fontFamily: 'NotoSans-Bold',
                            color: Colors.redAccent,
                            fontSize: 12,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: 34.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    "Hakkımızda",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text('Bu Uygulama Dr. Öğretim Üyesi',
                      style: TextStyle(fontSize: 20.0)),
                  Text("Ahmet Cevahir ÇINAR",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('tarafından yürütülen 3006881 kodlu',
                      style: TextStyle(fontSize: 20.0)),
                  Text('MOBİL PROGRAMLAMA dersi kapsamında',
                      style: TextStyle(fontSize: 20.0)),
                  Text('173006057 numaralı Bilal Yorulmaz ',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('tarafından 30 Mayıs 2021 günü yapılmıştır.',
                      style: TextStyle(fontSize: 20.0)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AudiSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Audi Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/audi/audibanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "AUDİ MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/audi/a3.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "A3 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/audi/a4.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "A4 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/audi/a5.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "A5 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BmwSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bmw Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/bmw/bmwbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "BMW MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/bmw/birserisi.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "1 Serisi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/bmw/ikiserisi.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "2 Serisi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/bmw/ucserisi.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "3 Serisi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CitroenSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Citroen Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/citroen/citroenbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "CİTROEN MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/citroen/c3.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "C3 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/citroen/c4.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "C4 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/citroen/c5.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "C5 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DaciaSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dacia Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/dacia/daciabanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "DACİA MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/dacia/daciaduster.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Duster Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/dacia/daciasandero.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Sandero Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/dacia/dacialogan.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Logan Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FiatSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fiat Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/fiat/fiatbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "FİAT MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/fiat/egea.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Egea Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/fiat/doblo.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Doblo Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/fiat/punto.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Logan Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FordSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ford Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/ford/fordbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "FORD MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/ford/focus.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Focus Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/ford/fiesta.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Fiesta Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/ford/edge.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Edge Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HondaSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Honda Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/honda/hondabanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "HONDA MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/honda/civic.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Civic Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/honda/jazz.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Jazz Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/honda/crv.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "CR-V Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HyundaiSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hyundai Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/hyundai/hyundaibanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "HYUNDAİ MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/hyundai/i10.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "i10 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/hyundai/i20.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "i20 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/hyundai/accentblue.png",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Accent Blue Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JeepSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jeep Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/jeep/jeepbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "JEEP MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/jeep/wrangler.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Wrangler Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/jeep/renegade.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Renegade Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/jeep/compass.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Compass Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KiaSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kia Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/kia/kiabanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "KİA MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/kia/rio.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Rio Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/kia/soul.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Soul Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/kia/stonic.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Stonic Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MercedesSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mercedes Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mercedes/mercedesbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "MERCEDES MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mercedes/aserisi.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "A Serisi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mercedes/bserisi.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "B Serisi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mercedes/cserisi.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "C Serisi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MiniSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mini Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mini/minibanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "MİNİ MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mini/cooper.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Cooper Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mini/cooper_s.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Cooper S Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mini/one.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "One Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MitsubishiSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mitsubishi Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mitsubishi/mitsubishibanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "MİTSUBİSHİ MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mitsubishi/lancer.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Lancer Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mitsubishi/l200.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "L-200 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/mitsubishi/spacestar.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Spacestar Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NissanSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nissan Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/nissan/nissanbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "NİSSAN MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/nissan/micra.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Micra Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/nissan/navara.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Navara Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/nissan/qashqai.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Qashqai Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OpelSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Opel Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/opel/opelbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "OPEL MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/opel/astra.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Astra Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/opel/corsa.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Corsa Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/opel/insignia.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "İnsignia Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PeugeotSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Peugeot Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/peugeot/peugeot.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "PEUGEOT MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/peugeot/partner.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Partner Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/peugeot/ikiyüzsekiz.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "208 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/peugeot/ücyüzbir.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "301 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RenaultSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Renault Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/renault/renaultbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "RENAULT MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/renault/clio.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Clio Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/renault/megane.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Megane Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/renault/talisman.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Talisman Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SeatSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Seat Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/seat/seatbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "SEAT MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/seat/ibiza.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "İbiza Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/seat/leon.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Leon Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/seat/tarraco.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Tarraco Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkodaSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Skoda Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/skoda/skodabanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "SKODA MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/skoda/fabia.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Fabia Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/skoda/octavia.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Octavia Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/skoda/superb.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "SuperB Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuzukiSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Suzuki Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/suzuki/suzukibanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "SUZUKİ MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/suzuki/baleno.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Baleno Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/suzuki/swift.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Swift Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/suzuki/vitara.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Vitara Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ToyotaSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toyota Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/toyota/toyotabanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "TOYOTA MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/toyota/corolla.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Corolla Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/toyota/hilux.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Hilux Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/toyota/yaris.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Yaris Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VolkswagenSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Volkswagen Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/volkswagen/volkswagenbanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "VOLKSWAGEN MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/volkswagen/golf.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Golf Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/volkswagen/passat.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Passat Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/volkswagen/polo.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Polo Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VolvoSayfam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Volvo Markası",
          style: TextStyle(
            fontFamily: 'PatrickHand-Regular',
            color: Colors.white,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/volvo/volvobanner.jpg",
                      ),
                      child: InkWell(),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "VOLVO MODELLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/volvo/sdoksan.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "S-90 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/volvo/xcaltmis.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "XC-60 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/volvo/xckirk.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "XC-40 Modeli",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
