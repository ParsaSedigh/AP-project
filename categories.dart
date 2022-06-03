import 'package:flutter/material.dart';

class AppBarForCategoriesPage extends StatelessWidget {
  const AppBarForCategoriesPage({Key? key}) : super(key: key);
  static const String _title = 'Nama Kala';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          leading: new Icon(Icons.shopping_cart),
          backgroundColor: Colors.lightBlueAccent,
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
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const ListTile(
            title: Text('Digital Products',
            style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView(
              // This next line does the trick.
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
          const ListTile(
            title: Text('Clothes',
            style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView(
              // This next line does the trick.
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
          const ListTile(
            title: Text('Book & Stationary',
            style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView(
              // This next line does the trick.
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
          const ListTile(
            title: Text('Sport & Travel',
            style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
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
    ));
  }
}
