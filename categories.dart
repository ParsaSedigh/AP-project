import 'dart:ui';

import 'package:flutter/material.dart';

class AppBarForCategoriesPage extends StatelessWidget {
  const AppBarForCategoriesPage({Key? key}) : super(key: key);
  static const String _title = 'Nama Kala';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          leading: new Icon(Icons.shopping_cart),
          backgroundColor: Color.fromARGB(226, 17, 118, 185),
        ),
        body: const Categories(),
      ),
    );
    throw UnimplementedError();
  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  _Categories createState() => _Categories();
}

class _Categories extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: const Text(
                'Categories',
                style: TextStyle(
                    color: Color.fromARGB(226, 17, 118, 185),
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
              const SizedBox(height: 50,),
          const ListTile(
            title: Text('Digital Products',
                style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('assets/images/d_s22ultraphntmblck512_2020_13.jpg'),
                      const Text('Mobile',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),),
                    ],
                  )
                ),
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('assets/images/photo-1593642632823-8f785ba67e45.jpg'),
                      const Text('Lap top',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),),
                    ],
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('assets/images/download.jpg'),
                      const Text('Camera',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const ListTile(
            title:
                Text('Clothes', style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('assets/images/mens-occasionwear-1805.jpg'),
                      const Text('Men',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),),
                    ],
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('assets/images/a4642577-1b1b-42d1-abb2-0cf84361b563.jpg'),
                      const Text('Women',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),),
                    ],
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('assets/images/1605784309.jpg'),
                      const Text('Kids',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const ListTile(
            title: Text('Book & Stationary',
                style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const ListTile(
            title: Text('Sport & Travel',
                style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(226, 17, 118, 185)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_sharp),
            label: 'Categories',
            backgroundColor: Color.fromARGB(226, 17, 118, 185)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'Cart',
            backgroundColor: Color.fromARGB(226, 17, 118, 185)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'My profile', 
            backgroundColor: Color.fromARGB(226, 17, 118, 185)
          ),
        ],
      ),
    );
  }
}
