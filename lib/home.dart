import 'package:flutter/material.dart';
import 'package:screen/widgets/categories.dart';
import 'package:screen/widgets/gridview.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "More Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Categories(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Items",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "view more",
                  style: TextStyle(color: Colors.pink),
                )
              ],
            ),
          ),
          Items(),
          

        ],
      ),
    );
  }
}
