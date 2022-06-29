import 'package:flutter/material.dart';

import 'Cart.dart';
import 'Mobiles.dart';
import 'Profile.dart';

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
          leading: const Icon(Icons.shopping_cart),
          backgroundColor: const Color.fromARGB(226, 17, 118, 185),
        ),
        body: const Categories(),
      ),
    );
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
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Categories_BG_Image.jpg"),
                opacity: 0.3,
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                        color: Color.fromARGB(226, 17, 118, 185),
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              const SizedBox(
                height: 50,
              ),
              const ListTile(
                title: Text(
                  'Digital Products',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                height: 200.0,
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 160.0,
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                  iconSize: 140,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppBarForMobilesPage()));
                                  },
                                  icon: Image.asset(
                                      'assets/images/d_s22ultraphntmblck512_2020_13.jpg')),
                            ),
                            const Text(
                              'Mobile',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: IconButton(
                                iconSize: 140,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AppBarForCategoriesPage()));
                                },
                                icon: Image.asset(
                                    'assets/images/photo-1593642632823-8f785ba67e45.jpg')),
                          ),
                          const Text(
                            'Lap top',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                  iconSize: 140,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppBarForCategoriesPage()));
                                  },
                                  icon: Image.asset(
                                      'assets/images/download.jpg'))),
                          const Text(
                            'Camera',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 40,
                thickness: 2,
                indent: 5,
                endIndent: 10,
                color: Colors.blueGrey,
              ),
              const SizedBox(height: 50),
              const ListTile(
                title: Text('Clothes',
                    style: TextStyle(fontWeight: FontWeight.w800)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                height: 200.0,
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                  iconSize: 140,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppBarForCategoriesPage()));
                                  },
                                  icon: Image.asset(
                                      'assets/images/mens-occasionwear-1805.jpg'))),
                          const Text(
                            'Men',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: IconButton(
                                iconSize: 140,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AppBarForCategoriesPage()));
                                },
                                icon: Image.asset(
                                    'assets/images/a4642577-1b1b-42d1-abb2-0cf84361b563.jpg')),
                          ),
                          const Text(
                            'Women',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                  iconSize: 140,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppBarForCategoriesPage()));
                                  },
                                  icon: Image.asset(
                                      'assets/images/1605784309.jpg'))),
                          const Text(
                            'Kids',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 40,
                thickness: 2,
                indent: 5,
                endIndent: 10,
                color: Colors.blueGrey,
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
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                  iconSize: 140,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppBarForCategoriesPage()));
                                  },
                                  icon: Image.asset(
                                      'assets/images/Cambourne-Book-Club.jpg'))),
                          const Text(
                            'Book',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                  iconSize: 140,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppBarForCategoriesPage()));
                                  },
                                  icon: Image.asset(
                                      'assets/images/2069613.jpg'))),
                          const Text(
                            'Stationary',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: IconButton(
                                iconSize: 140,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AppBarForCategoriesPage()));
                                },
                                icon: Image.asset(
                                    'assets/images/Instruments-1-1.jpg')),
                          ),
                          const Text(
                            'Music',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Container(
                                child: IconButton(
                                    iconSize: 140,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const AppBarForCategoriesPage()));
                                    },
                                    icon: Image.asset(
                                        'assets/images/handicraft-500x500.jpg')),
                              )),
                          const Text(
                            'Handicrafts',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 40,
                thickness: 2,
                indent: 5,
                endIndent: 10,
                color: Colors.blueGrey,
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
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                            child: Container(
                              child: Container(
                                decoration: const BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.blueGrey,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                    iconSize: 140,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const AppBarForCategoriesPage()));
                                    },
                                    icon: Image.asset(
                                        'assets/images/8030014d4dc640195859e0e3f2af5ba9.jpg')),
                              ),
                            ),
                          ),
                          const Text(
                            'Sport Clothes',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: IconButton(
                                iconSize: 140,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AppBarForCategoriesPage()));
                                },
                                icon: Image.asset(
                                    'assets/images/how-to-clean-and-disinfect-sports-equipment.jpg')),
                          ),
                          const Text(
                            'Sport Tools',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: IconButton(
                                iconSize: 140,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AppBarForCategoriesPage()));
                                },
                                icon: Image.asset('assets/images/960x0.jpg')),
                          ),
                          const Text(
                            'Camping & traveling tools',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
          currentIndex: 0,
        ),
      ),
    );
  }
}
