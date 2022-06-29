import 'dart:ui';

import 'package:flutter/material.dart';

import 'categories.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  static const String _title = 'Nama Kala';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),
        leading: const Icon(Icons.shopping_cart),
        backgroundColor: const Color.fromARGB(226, 17, 118, 185),),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Sign_Up_BG.JPG"),
                opacity: 0.24,
                fit: BoxFit.cover)),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 50),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          color: Color.fromARGB(226, 17, 118, 185),
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    ),),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: firstnameController,
                    style: const TextStyle( color: Colors.black , fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: lastnameController,
                    style: const TextStyle( color: Colors.black , fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',

                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: phoneNumberController,
                    style: const TextStyle( color: Colors.black , fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',

                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    style: const TextStyle( color: Colors.black , fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',

                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    style: const TextStyle( color: Colors.black , fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',

                    ),
                  ),
                ),
                
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: const Color.fromARGB(226, 17, 118, 185)),
                      child: const Text('Confirm'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBarForCategoriesPage()));
                      },
                    )
                ),
                Row(
                  children: <Widget>[
                    const Text('Already have an account?' , style: TextStyle(fontWeight: FontWeight.w500)),
                    TextButton(
                      style: TextButton.styleFrom(primary: const Color.fromARGB(226, 17, 118, 185)),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                        
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBarForSignInPage()));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )),
      ),
    );
  }
}
class AppBarForSignInPage extends StatelessWidget{
  const AppBarForSignInPage({Key? key}) : super(key: key);

  static const String _title = 'Nama Kala';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),
        leading: const Icon(Icons.shopping_cart),
        backgroundColor: const Color.fromARGB(226, 17, 118, 185),),
        body: const SignInPage(),
      ),
    );
  }
}
class SignInPage extends StatefulWidget {
  const SignInPage({ Key? key }) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Sign_Up_BG.JPG"),
                opacity: 0.25,
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 50),
          child: ListView(
            children: <Widget>[
              
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        color: Color.fromARGB(226, 17, 118, 185),
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: phoneNumberController,
                    style: const TextStyle( color: Colors.black , fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    style: const TextStyle( color: Colors.black , fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0) ,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: const Color.fromARGB(226, 17, 118, 185)),
                    child: const Text('Confirm'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AppBarForCategoriesPage()));
                    },
                  )
              ),
            ],
          ),
         ),
      ),
    );
  }
}