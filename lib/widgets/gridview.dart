import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          children: [
            item("assets/KB.jpg", "Backlit KeyBoard",(Colors.grey)),
            item("assets/note20.jpg", "Note 20 ULTRA",(Colors.grey)),
            item("assets/MB.jpg", "Macbook Pro",(Colors.grey)),
            item("assets/MBA.jpg", "Macbook Air",(Colors.grey)),
            item("assets/pc.jpg", "Gaming PC",(Colors.grey)),
            item("assets/Iphone.jpg", "Iphone 12",(Colors.grey)),
            item("assets/MD.jpg", "Mercedes",(Colors.grey)),
            item("assets/HD.jpg", "Harley Davidson",(Colors.grey)),
          ]),
    );
  }
}

Widget item(var img, name,clr) {
  return Column(
    children: [
      Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Image(
          image: AssetImage(
            img,
          ),
          fit: BoxFit.cover,
        ),
      ),
      Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold,color: clr),
      )
    ],
  );
}
