import 'package:donutapp/FoodTile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  List donutList = [
    //Todo (donutFlavor,donutPrice,donutColor,imgPath)
    ['Chocolat', '27', Colors.brown, 'assets/ChocolatDonut.png'],
    ['Ice Cream', '45', Colors.blue, 'assets/IceCreamDonut.png'],
    ['Kiwi', '60', Colors.green, 'assets/KiwiDonut.png'],
    ['Strawberry', '39', Colors.red, 'assets/StrawberryDonut.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: donutList.length,
      itemBuilder: (BuildContext context, int index) {
        return FoodTile(
          foodColor: donutList[index][2],
          flavor: donutList[index][0],
          price: donutList[index][1],
          imgPath: donutList[index][3],
        );
      },
    );
  }
}
