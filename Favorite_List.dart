import 'package:flutter/material.dart';

class AppBarForFavoriteListPage extends StatelessWidget {
  const AppBarForFavoriteListPage({Key? key}) : super(key: key);
  static const String _title = 'Nama Kala';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),
        leading: const Icon(Icons.shopping_cart),
        backgroundColor: const Color.fromARGB(226, 17, 118, 185),),
        body: const FavotiteList(),
      ),
    );
  }
}

class FavotiteList extends StatefulWidget {
  const FavotiteList({Key? key}) : super(key: key);
  @override
  _FavoriteList createState() => _FavoriteList();
}

class _FavoriteList extends State<FavotiteList> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  
}