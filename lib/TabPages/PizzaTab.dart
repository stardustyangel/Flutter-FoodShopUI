import 'package:flutter/material.dart';

import '../FoodTile.dart';

class PizzaTab extends StatelessWidget {
  List burgertList = [
    ['Simple ', '10', Colors.green, 'assets/PizzaSimple.png'],
    ['e-fichi', '12', Colors.purple, 'assets/pizza-e-fichi.png'],
    ['Marinara ', '09', Colors.yellow, 'assets/PizzaMarinara.png'],
    ['Meat Balls', '15', Colors.brown, 'assets/pizzaMeatBalls.png'],
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
