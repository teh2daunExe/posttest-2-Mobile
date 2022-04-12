import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget myContainer(String path, String judul) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            "Posttest 2 M.Fahreza",
            style: TextStyle(fontSize: 12, color: Colors.blueAccent),
            textAlign: TextAlign.center,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(17.0),
            child: Image(
              image: AssetImage('assets/' + path),
              height: 400.0 - 50,
              width: 220.0 - 5,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            judul,
            style: TextStyle(fontSize: 12, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.menu,
            ),
          ),
          title: Text("Pemilihan Character Game",
              style: TextStyle(fontSize: 16.0)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.redAccent, Colors.blue])),
          ),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 450.0 - 50,
                    margin: EdgeInsets.all(5.0),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        myContainer('a.jpg', 'Jet'),
                        myContainer('b.jpg', 'Killjoy'),
                        myContainer('c.jpg', 'Sage'),
                        myContainer('d.jpg', 'Raze'),
                        myContainer('e.jpg', 'Yoru')
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Pilihlah Karakter yang Anda Inginkan',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Anda belum memilih Karakter . . .',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Material(
          child: InkWell(
            child: Container(
              child: const Center(
                child: Text(
                  "Select Character",
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueGrey),
              height: 50,
            ),
          ),
          color: Colors.transparent,
        ));
  }
}
