import 'package:flutter/material.dart';

import '../FoodTile.dart';

class SmoothieTab extends StatelessWidget {
  List smoothieList = [
    ['Grapes', '17', Colors.purple, 'assets/SmoothieGrapes.png'],
    ['Kale', '15', Colors.green, 'assets/SmoothieKale.png'],
    ['Watermelon ', '19', Colors.red, 'assets/SmoothieWatermelon.png'],
    ['Pineapple', '11', Colors.yellow, 'assets/SmoothiePineapple.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: smoothieList.length,
      itemBuilder: (BuildContext context, int index) {
        return FoodTile(
          foodColor: smoothieList[index][2],
          flavor: smoothieList[index][0],
          price: smoothieList[index][1],
          imgPath: smoothieList[index][3],
        );
      },
    );
  }
}
