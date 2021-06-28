import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Main(),
        ));
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[700],
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "Ecom App UI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.amberAccent,
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: 20,
              ),
              // ignore: deprecated_member_use
              title: Text("Home", style: TextStyle(color: Colors.black))),
          BottomNavigationBarItem(
            backgroundColor: Colors.redAccent,
              icon: Icon(
                Icons.favorite,
                size: 20,
                color: Colors.black,
              ),
              // ignore: deprecated_member_use
              title: Text("Favourites", style: TextStyle(color: Colors.black))),
          BottomNavigationBarItem(backgroundColor: Colors.orangeAccent[700],
              icon: Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
              // ignore: deprecated_member_use
              title: Text(
                "Search",
                style: TextStyle(color: Colors.black),
              )),
          BottomNavigationBarItem(
            backgroundColor: Colors.pinkAccent[400],
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 20,
              ),
              // ignore: deprecated_member_use
              title: Text(
                "Cart",
                style: TextStyle(color: Colors.black),
              )),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey,
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 20,
            ),
            // ignore: deprecated_member_use
            title: Text(
              "User",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
