import 'package:flutter/material.dart';

import 'Cart.dart';
import 'Profile.dart';

import 'Profile.dart';
import 'categories.dart';

class AppBarForSellPage extends StatelessWidget {
  const AppBarForSellPage({Key? key}) : super(key: key);
  static const String _title = 'Nama Kala';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          leading: const Icon(Icons.shopping_cart),
          backgroundColor:const Color.fromARGB(226, 17, 118, 185),
        ),
        body: const Sell(),
      ),
    );
  }
}

class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);
  @override
  _Sell createState() => _Sell();
}

class _Sell extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Sell_BG.jpg"),
                opacity: 0.1,
                fit: BoxFit.cover)),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 50),
              child: Column(
                children: [
                  Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    'Sale',
                    style: TextStyle(
                        color: Color.fromARGB(226, 17, 118, 185),
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
                ],
              )
            ),
        ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.blueGrey,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          onTap: ((value) {
            if (value == 3) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppBarForProfilePage()));
            }
            if (value == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppBarForSellPage()));
            }
            if (value == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppBarForCartPage()));
            }
            if (value == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppBarForCategoriesPage()));
            }
          }),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.category_sharp),
                label: 'Categories',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded),
                label: 'Cart',
                backgroundColor: Color.fromARGB(226, 17, 118, 185)),
            BottomNavigationBarItem(
                icon: Icon(Icons.sell_rounded),
                label: 'Sale',
                backgroundColor: Color.fromARGB(226, 17, 118, 185)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'My profile',
                backgroundColor: Color.fromARGB(226, 17, 118, 185)),
          ],
          currentIndex: 2,
        ),)
    );
  }

}