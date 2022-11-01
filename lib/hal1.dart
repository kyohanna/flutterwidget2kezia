part of 'halaman.dart';

class Hal1 extends StatefulWidget {
  const Hal1({ Key? key }) : super(key: key);
  static const String routeName= '/';

  @override
  _Hal1State createState() => _Hal1State();
}

class _Hal1State extends State<Hal1> {
  bool isLikeClicked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Assignment1"),
        ), body: Stack(children: <Widget>[Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [
                Colors.red,
                Colors.black ])),
            ),Container(child: Column(children: <Widget>[Flexible(flex: 2,child: Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('image/image.png'))),
                  ),
                ),
                Flexible(flex: 1,child: Row(children: <Widget>[Flexible(child: Container(margin: EdgeInsets.all(5),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(fit: BoxFit.cover,image: AssetImage('image/image.png'))),)),
                        Flexible(child: Container(margin: EdgeInsets.all(3),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(fit: BoxFit.cover,image: AssetImage('image/image.png'))),
                         )),
                        Flexible(child: Container(margin: EdgeInsets.all(8),decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('image/image.png'))),
                        ))
                      ],
                    )),
                Flexible(flex: 4,child: Container(child: Column(children: <Widget>[Flexible(
                            child: Container(child: Text("tes tes tes",style: TextStyle(color: Colors.yellow.shade700,fontWeight: FontWeight.w800,fontSize: 20),
                            )),
                          ),Flexible(flex: 7,child: Container(child: ListView(children: <Widget>[
                                  Container(child: Text(
                                          "ingin sekali aku mendatangi panggilan ombak, namun aku tidak bisa berenang, sekelompok orang tadi pun mengajakku untuk mendatanginya, aku pun menyutujuinya, tanpa kusadari air sudah setinggi leherku, pandanganku kacau, aku tidak bisa berpikir lurus,aku pun berteriak meminta tolong, namun sekelompok orang itu tiba-tiba menghilang",
                                          style: TextStyle(color: Colors.indigo,)),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ))
              ],
            )),
            Container(alignment: Alignment.topRight,margin: EdgeInsets.only(right: 10, top: 10),
              child: IconButton(color: isLikeClicked ? Colors.yellow : Colors.blue,icon: Icon(Icons.favorite),
                onPressed: () {
                  setState(() {isLikeClicked = !isLikeClicked;});
                },
              ),
            ),
            Container(alignment: Alignment.bottomLeft,margin: EdgeInsets.only(left: 290, top: 700),child: Column(children: [ElevatedButton(onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Booking())
                );
              },
              child: Text('Daftarkan diri anda sekarang!'),
              ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}