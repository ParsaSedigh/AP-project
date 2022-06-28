import 'package:flutter/material.dart';

import 'package:namakala/Mobiles.dart';

class AppBarForSamsungS22 extends StatelessWidget {
  const AppBarForSamsungS22({Key? key}) : super(key: key);
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
                        builder: (context) => const AppBarForMobilesPage()));
              },
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white)),
          backgroundColor: const Color.fromARGB(226, 17, 118, 185),
        ),
        body: const SamsungS22(),
      ),
    );
  }
}

class SamsungS22 extends StatefulWidget {
  const SamsungS22({Key? key}) : super(key: key);
  @override
  _SamsungS22 createState() => _SamsungS22();
}

class _SamsungS22 extends State<SamsungS22> {
  var colors = [
    'Phantom Black',
    'Phantom White',
    'Green',
    'Burgundy',
  ];
  var rate = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  String dropdownvalue2 = '1';
  String dropdownvalue = 'Phantom Black';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: const Text(
                  'Samsung Galaxy S22',
                  style: TextStyle(
                      color: Color.fromARGB(226, 17, 118, 185),
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Image.asset("assets/images/Samsung_Galaxy_S22.jpg"),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: Image.asset("assets/images/Samsung_S22_white.jpg"),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: Image.asset("assets/images/Samsung_S22_Green.jpg"),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: Image.asset(
                        "assets/images/Samsung_Galaxy_S22_Pink.jpg"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: const Text(
                      "Colors : ",
                      style: TextStyle(fontSize: 18),
                    )),
                DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.color_lens_outlined),
                  items: colors.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: const Text(
                      "Rate : ",
                      style: TextStyle(fontSize: 18),
                    )),
                DropdownButton(
                  value: dropdownvalue2,
                  icon: const Icon(Icons.star_outline_rounded , size: 30,),
                  items: rate.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue2 = newValue!;
                    });
                  },
                ),
              ],
            ),
            const Divider(
              color: Colors.blueGrey,
              thickness: 1.5,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB( 20, 10, 0, 10),
              child: const Text("Seller : " , style: TextStyle(
                fontSize: 18,
              ),),
            ),
            const Divider(
              color: Colors.blueGrey,
              thickness: 1.5,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB( 20, 10, 0, 10),
              child: const Text("Price : 799.99\$ " , style: TextStyle(
                fontSize: 18,
              ),),
            ),
            const Divider(
              color: Colors.blueGrey,
              thickness: 1.5,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB( 20, 10, 0, 10),
              child: const Text("Description : " , style: TextStyle(
                fontSize: 18,
              ),),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB( 20, 10, 20, 10),
              child: const Text("The Samsung Galaxy S22 specs are top-notch including a Snapdragon 8 Gen 1 chipset, 8GB RAM coupled with 128/256GB storage, and a 3700mAh battery with 25W charging speed. The phone sports a 6.1-inch Dynamic AMOLED display with an adaptive 120Hz refresh rate. In the camera department there is a Triple-sensor setup is present." , style: TextStyle(
                fontSize: 15,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
