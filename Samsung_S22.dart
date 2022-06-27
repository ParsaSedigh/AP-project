import 'package:flutter/material.dart';

import 'package:nama_kala/Mobiles.dart';

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
          backgroundColor: Colors.blueGrey,
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
    'Black',
    'White',
    'Green',
    'Light Pink',
  ];
  String dropdownvalue = 'Black';
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
              padding: const EdgeInsets.fromLTRB(0, 25, 15, 0),
              child: Image.asset('assets/images/Samsung_Galaxy_S22.jpg',
                  scale: 2.2),
            ),
            const SizedBox( height: 25,),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child:  
                  const Text("Colors : ",
                  style: TextStyle(fontSize: 15),)
                  ),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
