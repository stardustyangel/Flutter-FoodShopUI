import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String? iconPath;

  MyTab({required String this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 70,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Image.asset(iconPath!),
      ),
    );
  }
}
