import 'package:flutter/material.dart';
import 'CategoryCard.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
              Icon(
                Icons.shopping_cart,
                size: 40,
                color: Colors.pink,
              ),
              "Shop"),
          CategoryCard(
              Icon(
                Icons.videogame_asset,
                size: 40,
                color: Colors.pink,
              ),
              "Games"),
          CategoryCard(
              Icon(
                Icons.mobile_friendly,
                size: 40,
                color: Colors.pink,
              ),
              "Mobiles"),
          CategoryCard(
              Icon(
                Icons.watch,
                size: 40,
                color: Colors.pink,
              ),
              "Watches"),
          CategoryCard(
              Icon(
                Icons.car_rental,
                size: 40,
                color: Colors.pink,
              ),
              "Cars"),
          CategoryCard(
              Icon(
                Icons.tv,
                size: 40,
                color: Colors.pink,
              ),
              "LCD")
        ],
      ),
    );
  }
}
