import 'package:flutter/material.dart';

import 'categories.dart';

import 'main.dart';

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

class _Profile extends State<Profile> {
  // ignore: recursive_getters
  get firstnameController => null;

  // ignore: recursive_getters
  get phoneNumberController => null;

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
                  'Profile',
                  style: TextStyle(
                      color: Color.fromARGB(226, 17, 118, 185),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset(
                  'assets/images/images.jpg',
                  scale: 1.3,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: firstnameController,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: phoneNumberController.toString() ,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
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
