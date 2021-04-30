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
                    Image.network(
                        "https://i.pinimg.com/originals/55/55/c9/5555c9e5f0da6b3832ad1e76fae00b32.jpg"),
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
                      image: NetworkImage(
                          "https://staticb.yolcu360.com/blog/wp-content/uploads/2021/01/12142003/audi-a3-960x542.jpg"),
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
                      image: NetworkImage(
                        "https://cdn.motor1.com/images/mgl/PKV3K/s1/2020-audi-a4.jpg",
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
                      image: NetworkImage(
                        "https://www.audi.com.tr/content/dam/nemo/models/a5/a5-sportback/my-2021/1920x1080-inline-media-gallery/1920x1080-audi-a5-sportback-rear-2021-light-191005_1.jpg",
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
                      image: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/G8nzwmjEaWWFxdQ-hPH6bccvMmohktT2_axR-Dml4DU9U06eY1vBL5Cbee6ZK00VTp3ihOtyhSxUaX8EzZHQ8AXDxNafPE5pjLH9huyQRtFT03ukFqN-virKtGq8n8PFHmwVzsMG-RrIOgG-m9ic-gJpZb4",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/3d_design_bmw_2_series_gran_coupe_2020-HD.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/ac_schnitzer_bmw_3_series_sedan_m_sport_2019_4k-HD.jpg",
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
                      image: NetworkImage(
                        "https://img.drivemag.net/media/default/0001/63/2018-Citroen-C4-Cactus-facelift-0-9341-default-large.jpeg",
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
                      image: NetworkImage(
                        "https://cdn.motor1.com/images/mgl/WxevL/s1/citroen-c3-restylee-2020.jpg",
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
                      image: NetworkImage(
                        "https://shiftdelete.net/wp-content/uploads/2020/06/yeni-citroen-c4-3.jpg",
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
                      image: NetworkImage(
                        "https://images-na.ssl-images-amazon.com/images/I/91EJd5brG3L._AC_SX466_.jpg",
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
                      image: NetworkImage(
                        "https://c4.wallpaperflare.com/wallpaper/925/460/16/vehicles-dacia-duster-car-dacia-suv-hd-wallpaper-preview.jpg",
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
                      image: NetworkImage(
                        "https://i.pinimg.com/originals/8c/a6/b8/8ca6b81164f56116ab7212d7468f70e8.png",
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
                      image: NetworkImage(
                        "https://www.carpixel.net/w/789bce3c5ff361590b0581cf49a391b9/dacia-logan-wallpaper-hd-972.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/31-7-2017/17610/thumb2-studio-fiat-argo-2018-cars-4k-hatchbacks.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/18-8-2019/101678/thumb2-fiat-egea-sport-4k-2019-cars-motion-blur-fiat-357.jpg",
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
                      image: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/qYH-Z8KGp30HslKa2_4NlGZ_k3GB6dMiIHNoBgJTI3jtQ3_ZMln759NdJkw1tY4btEg_9eeyadYshWF9ml98P6na3GaLOTFOSzfPQdn3_OfKe4UiUJ6yZU0Xi-cvCI1HEz5Pvlx-vAa_2PcIK-hpaYtakg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/img/original/58648/fiat-punto-4k-2019-cars-compact-cars-new-punto.jpg",
                      ),
                      colorFilter: ColorFilters.greyscale,
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Punto Modeli",
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
                      image: NetworkImage(
                        "https://i.pinimg.com/originals/3a/64/ab/3a64ab3c9fbce934102cfc62b81a2b4e.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/img/original/81007/4k-ford-focus-st-road-2019-cars-motion-blur.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/2018_ford_fiesta_st_3_door_4k_2-HD.jpg",
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
                        "https://images.alphacoders.com/720/720335.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/18-3-2020/125027/thumb2-honda-civic-type-r-4k-tuning-2020-cars-eu-spec.jpg",
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
                      image: NetworkImage(
                        "https://images8.alphacoders.com/451/thumb-1920-451741.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/17-3-2018/44533/thumb2-honda-jazz-sport-4k-2018-cars-road-motion-blur.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/2018_honda_cr_v_4k_3-HD.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/2019_hyundai_santa_fe_4k-HD.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/23-1-2020/119403/thumb2-4k-hyundai-i10-compact-cars-2020-cars-red-i10.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/14-11-2020/144526/thumb2-2021-hyundai-i20-n-4k-front-view-exterior.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/18-2-2018/41195/thumb2-hyundai-accent-2018-4k-new-blue-accent-sedan.jpg",
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
                      image: NetworkImage(
                        "https://images5.alphacoders.com/106/1062574.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/19-12-2017/34092/thumb2-jeep-wrangler-rubicon-4k-2018-cars-new-wrangler-suvs.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/9-8-2019/100532/thumb2-jeep-renegade-trailhawk-4k-road-2019-cars-suvs.jpg",
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
                      image: NetworkImage(
                        "https://wallpaperaccess.com/full/1614051.jpg",
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
                      image: NetworkImage(
                        "https://i.pinimg.com/originals/73/ff/f3/73fff331b8be5eabf0c445378daee536.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/2018_kia_rio_gt_line_4k-HD.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/12-1-2018/36993/thumb2-4k-kia-soul-2019-cars-crossovers-raceway.jpg",
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
                      image: NetworkImage(
                        "https://images5.alphacoders.com/881/thumb-1920-881121.jpg",
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
                      image: NetworkImage(
                        "https://wallpapercave.com/wp/wp5441213.jpg",
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
                      image: NetworkImage(
                        "https://images7.alphacoders.com/950/thumb-1920-950386.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/11-3-2019/82979/thumb2-mercedes-benz-b180-sport-4k-w247-2019-cars-road.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/2018_mercedes_amg_gt_c_edition_50_4k-HD.jpg",
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
                      image: NetworkImage(
                        "https://images8.alphacoders.com/934/934789.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/mini_cooper_s_2018_4k-HD.jpg",
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
                      image: NetworkImage(
                        "https://images.hdqwalls.com/wallpapers/2018-mini-cooper-s-4k-c4.jpg",
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
                      image: NetworkImage(
                        "https://i.pinimg.com/originals/17/12/d7/1712d7cc75c8ea08ab9949ae257c8363.jpg",
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
                      image: NetworkImage(
                        "https://images2.alphacoders.com/685/685648.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/mitsubishi_l200_triton_sport_hpe_s_2020_5k-HD.jpg",
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
                      image: NetworkImage(
                        "https://www.mitsubishi-motors.com.tr/uploads/photo-2020-04-08-14-10-40.jpg",
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
                      image: NetworkImage(
                        "https://i.pinimg.com/originals/a4/0f/78/a40f7848d1cc1e839f3940873a4b1788.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/29-6-2019/98274/thumb2-nissan-micra-4k-k14-motion-blur-2019-cars.jpg",
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
                      image: NetworkImage(
                        "https://images5.alphacoders.com/951/thumb-1920-951551.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/13-6-2019/94988/thumb2-nissan-qashqai-4k-motion-blur-2019-cars-crossovers.jpg",
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
                      image: NetworkImage(
                        "https://wallpapersplanet.net/sites/default/files/opel-wallpapers-34729-7508545.png",
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
                      image: NetworkImage(
                        "https://images3.alphacoders.com/771/771384.jpg",
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
                      image: NetworkImage(
                        "https://p4.wallpaperbetter.com/wallpaper/447/178/442/opel-corsa-vxr-4k-pc-full-hd-wallpaper-preview.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/6-12-2019/114254/opel-insignia-grand-sport-4k-2020-cars-luxury-cars-blue-insignia.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/22-6-2020/136822/thumb2-peugeot-508-4k-tuning-road-2020-cars.jpg",
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
                      image: NetworkImage(
                        "https://img.favcars.com/peugeot/partner/images_peugeot_partner_2002_1.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/7-4-2020/127780/thumb2-peugeot-208-gt-line-4k-hdr-2020-cars-uk-spec.jpg",
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
                      image: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/-zsDVx_9pfydQ0_Plkli9boF38ZV7erHKXAYkLNdso8YLrOouZ8B-ZGcm5g38vgA1Q_EnBdt3fIEFXr1jQ63cP8xcCe4vZv9F1o2TEsd6r2nMBTUpX7kFNktGzoQ76AHNzMkQ5kzKw",
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
                      image: NetworkImage(
                        "https://wallpaperaccess.com/full/1271163.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/16-11-2019/111881/thumb2-renault-clio-4k-motion-blur-2019-cars-red-clio.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/renault_megane_rs_280_cup_2018_4k-HD.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/renault_talisman_2015-HD.jpg",
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
                      image: NetworkImage(
                        "https://p4.wallpaperbetter.com/wallpaper/459/340/856/seat-seat-leon-black-car-car-compact-car-hd-wallpaper-preview.jpg",
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
                      image: NetworkImage(
                        "https://c4.wallpaperflare.com/wallpaper/301/422/468/ibiza-seat-ibiza-seat-wallpaper-preview.jpg",
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
                      image: NetworkImage(
                        "https://wallpapercave.com/wp/wp2290456.jpg",
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
                      image: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/lWa4pLzqQUlDAmgRTDE2vfy8LbaA7GNtHDv1ijzF5e-mlZRJOR9s3-DeqOsR-teRwc4Dw1r_f-STIqOX5u20vFuJt81BKi7UHlS1fkBufVhzm-zNxvppI84VrUVBuiXjINaMZQxV1pS9eA",
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
                      image: NetworkImage(
                        "https://wallpaperaccess.com/full/1268142.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/18-11-2017/29223/thumb2-4k-skoda-fabia-road-2017-cars-hatchbacks.jpg",
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
                      image: NetworkImage(
                        "https://wallpaperaccess.com/full/5016007.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/skoda_superb_combi_armoured_2018_4k-HD.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/img/original/128486/suzuki-vitara-hybrid-4k-road-2020-cars-crossovers.jpg",
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
                      image: NetworkImage(
                        "https://wallpapercave.com/wp/wp3921668.jpg",
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
                      image: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/uwiMl1aZonbomaDYSQpp59Wx7KTf0K9GOk_IkKf1tn-yF6gp-pGqjIo18WPJldfv4XidXtnqZOiOZi5WZMCsZTw_UrtZmW3bDa0OX9aG5y_IyBFVGYs35U80dW017k_e8Jw0qxzWn6VBBv4OHtG056DzQeVhX7BC2v2CKMovqcl7WUYURQ",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/16-3-2019/83544/thumb2-suzuki-vitara-4k-street-2019-cars-crossovers.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/4-9-2018/64541/thumb2-toyota-corolla-hybrid-4k-back-view-2018-cars-new-corolla.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/toyota_super_street_corolla_4k-HD.jpg",
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
                      image: NetworkImage(
                        "https://images2.alphacoders.com/450/thumb-1920-450546.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/toyota_yaris_hybrid_2020_4k_2-HD.jpg",
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
                      image: NetworkImage(
                        "https://wallpapercave.com/wp/wp2445931.jpg",
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
                      image: NetworkImage(
                        "https://images3.alphacoders.com/709/709730.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/15-1-2018/37262/thumb2-4k-volkswagen-passat-b8-road-2018-cars.jpg",
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
                      image: NetworkImage(
                        "https://www.hdcarwallpapers.com/walls/volkswagen_polo_gti_2018_4k-HD.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/27-9-2017/21854/thumb2-volvo-xc90-4k-2018-black-xc90-new-cars.jpg",
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
                      image: NetworkImage(
                        "https://images2.alphacoders.com/799/799597.jpg",
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
                      image: NetworkImage(
                        "https://images6.alphacoders.com/878/878257.jpg",
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
                      image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/25-9-2017/21666/thumb2-4k-volvo-xc40-2018-cars-white-xc40-crossovers.jpg",
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
