import 'package:flutter/material.dart';

import 'Profile.dart';

class AppBarForFavoriteListPage extends StatelessWidget {
  const AppBarForFavoriteListPage({Key? key}) : super(key: key);
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
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: const Text(
                  'Favorite List',
                  style: TextStyle(
                      color: Color.fromARGB(226, 17, 118, 185),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
              ],
            )));
  }
}
