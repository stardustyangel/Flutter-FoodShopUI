import 'package:flutter/material.dart';

import '../FoodTile.dart';

class PancakeTab extends StatelessWidget {
  List pancakeList = [
    ['Simple', '09', Colors.blue, 'assets/PancakeSimple.png'],
    ['Chocolat ', '12', Colors.brown, 'assets/PancakeChocolat.png'],
    ['Strawberry', '15', Colors.pink, 'assets/PancakeStrawberry.png'],
    ['Cherry ', '19', Colors.deepPurple, 'assets/PancakeCherry.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: pancakeList.length,
      itemBuilder: (BuildContext context, int index) {
        return FoodTile(
          foodColor: pancakeList[index][2],
          flavor: pancakeList[index][0],
          price: pancakeList[index][1],
          imgPath: pancakeList[index][3],
        );
      },
    );
  }
}
