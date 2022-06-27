import 'package:flutter/material.dart';

import 'Samsung_S22.dart';
import 'categories.dart';

class AppBarForMobilesPage extends StatelessWidget {
  const AppBarForMobilesPage({Key? key}) : super(key: key);
  static const String _title = 'Nama Kala';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AppBarForCategoriesPage()));
              },
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white)),
          backgroundColor: Colors.blueGrey,
        ),
        body: const Mobiles(),
      ),
    );
  }
}

class Mobiles extends StatefulWidget {
  const Mobiles({Key? key}) : super(key: key);
  @override
  _Mobiles createState() => _Mobiles();
}

class _Mobiles extends State<Mobiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: const Text(
              'Mobiles',
              style: TextStyle(
                  color: Color.fromARGB(226, 17, 118, 185),
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            )),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 80, 0, 0),
              child: Row(
                children: [
                  Column(
                    children:  [
                      Container(
                        child: const Text(
                          "Samsung Galaxy S22",
                          textScaleFactor:1.1,
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Price : 799.99\$             "),
                    ],
                  ),
                  Container(
                      child: IconButton(
                          iconSize: 180,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AppBarForSamsungS22()));
                          },
                          icon: Image.asset(
                              'assets/images/Samsung_Galaxy_S22.jpg')))
                ],
              ),
            ),
            const Divider(
              height: 20,
              thickness: 0.5,
              color: Colors.blueGrey,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        "iPhone 13 Pro Max",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Price : 1099\$            "),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                      child: IconButton(
                          iconSize: 190,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AppBarForMobilesPage()));
                          },
                          icon: Image.asset(
                              'assets/images/iphone_13_pro_max.jpg')))
                ],
              ),
            ),
            const Divider(
              height: 20,
              thickness: 0.5,
              color: Colors.blueGrey,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        "Xiaomi mi 11 Ultra",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Price : 1000\$            "),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                      child: IconButton(
                          iconSize: 190,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AppBarForMobilesPage()));
                          },
                          icon: Image.asset(
                              'assets/images/xiaomi-mi-11-ultra.jpg')))
                ],
              ),
            ),
            const Divider(
              height: 20,
              thickness: 0.5,
              color: Colors.blueGrey,
            ),
          ],
        )
      ],
    )));
  }
}
