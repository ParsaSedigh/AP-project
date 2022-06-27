import 'package:flutter/material.dart';

import 'Profile.dart';

class AppBarForMyProductsPage extends StatelessWidget {
  const AppBarForMyProductsPage({Key? key}) : super(key: key);
  static const String _title = 'Nama Kala';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          leading: IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBarForProfilePage()));
                  }, icon: const Icon(Icons.arrow_back_rounded , color: Colors.white)),

          backgroundColor: const Color.fromARGB(226, 17, 118, 185),
        ),
        body: const MyProducts(),
      ),
    );
  }
}

class MyProducts extends StatefulWidget {
  const MyProducts({Key? key}) : super(key: key);
  @override
  _MyProducts createState() => _MyProducts();
}

class _MyProducts extends State<MyProducts> {
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
                  'My Products',
                  style: TextStyle(
                      color: Color.fromARGB(226, 17, 118, 185),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
              ],
            )));
  }
}
