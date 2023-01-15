import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  final String? flavor;
  final String? price;
  final foodColor;
  final String? imgPath;

  FoodTile(
      {super.key,
      required this.flavor,
      required this.price,
      required this.foodColor,
      required this.imgPath});
  final double borderRds = 12;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: foodColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //Price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: foodColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRds),
                      topRight: Radius.circular(borderRds),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$' + price!,
                    style: TextStyle(
                      color: foodColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            //Picture
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                child: Image.asset(imgPath!)),
            //Flavor
            Text(flavor!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text('iEAT',
                style: TextStyle(fontSize: 12, color: Colors.grey[700])),
            SizedBox(
              height: 12,
            ),
            //Love icon + add btn
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
