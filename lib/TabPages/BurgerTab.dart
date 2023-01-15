import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../FoodTile.dart';

class BurgerTab extends StatelessWidget {
  List burgertList = [
    ['Halal Burger', '12', Colors.blue, 'assets/BurgerHalal.png'],
    ['Burger & Fries ', '09', Colors.yellow, 'assets/BurgerNfries.png'],
    ['Vegan Burger', '15', Colors.green, 'assets/BugerVegan.png'],
    ['Burger & Drink ', '10', Colors.red, 'assets/BurgerNdrink.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: burgertList.length,
      itemBuilder: (BuildContext context, int index) {
        return FoodTile(
          foodColor: burgertList[index][2],
          flavor: burgertList[index][0],
          price: burgertList[index][1],
          imgPath: burgertList[index][3],
        );
      },
    );
  }
}
