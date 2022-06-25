import 'package:flutter/material.dart';

import 'categories.dart';

class AppBarForProfilePage extends StatelessWidget {
  const AppBarForProfilePage({Key? key}) : super(key: key);
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
          backgroundColor: const Color.fromARGB(226, 17, 118, 185),
        ),
        body: const Profile(),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  _Profile createState() => _Profile();
}
/* Image.asset(
            'assets/images/images.jpg',
            scale: 1.5,
          ),*/
class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Image.asset(
              'assets/images/images.jpg',
              scale: 1.3,
          ),
              ),
            )
          ],
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
            if (value == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppBarForProfilePage()));
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
                backgroundColor: Color.fromARGB(226, 17, 118, 185)),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded),
                label: 'Cart',
                backgroundColor: Color.fromARGB(226, 17, 118, 185)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'My profile',
                backgroundColor: Color.fromARGB(226, 17, 118, 185)),
          ],
        ),
      ),
    );
  }
}
