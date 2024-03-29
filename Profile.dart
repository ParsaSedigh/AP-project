import 'package:flutter/material.dart';
import 'package:namakala2/Confirmed_Orders.dart';
import 'package:namakala2/My_Products.dart';
import 'Cart.dart';
import 'Favorite_List.dart';
import 'Sell.dart';
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
          backgroundColor:const Color.fromARGB(226, 17, 118, 185),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/profile_BG.jpg"),
                opacity: 0.9,
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const CircleAvatar(
                    backgroundImage : AssetImage("assets/images/images.jpg"),
                    radius: 80,
                  )
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.fromLTRB(20, 40, 0, 10),
                          child: const Text(
                            "Name : ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Divider(
                          color: Colors.blueGrey,
                          thickness: 2,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: const Text(
                            "Phone Number : ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Divider(
                          color: Colors.blueGrey,
                          thickness: 2,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: const Text(
                            "Email : ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Divider(
                          color: Colors.blueGrey,
                          thickness: 2,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Wrap(
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppBarForConfirmedOrdersPage()));
                                  },
                                  child: const Text("Confirmed Orders")),
                              const SizedBox(
                                width: 30,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppBarForMyProductsPage()));
                                  },
                                  child: const Text("My Products")),
                                  const SizedBox(width: 50,),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AppBarForFavoriteListPage()));
                                  },
                                  child: const Text("Favorite List")),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
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
          currentIndex: 3,
        ),
      ),
    );
  }
}
