import 'package:donutapp/MyTab.dart';
import 'package:flutter/material.dart';

import 'TabPages/BurgerTab.dart';
import 'TabPages/DonutTab.dart';
import 'TabPages/PancakeTab.dart';
import 'TabPages/PizzaTab.dart';
import 'TabPages/SmoothieTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabList = [
    //DonutTab
    MyTab(iconPath: 'assets/Types/donut.png'),

    //BurgerTab
    MyTab(iconPath: 'assets/Types/burger.png'),

    //SmoothieTab
    MyTab(iconPath: 'assets/Types/smoothie.png'),

    //Pancack Tab
    MyTab(iconPath: 'assets/Types/pancakes.png'),

    // Pizza Tab
    MyTab(iconPath: 'assets/Types/pizza.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 30,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I Want to ',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            //Todo TabBar
            TabBar(tabs: tabList,indicatorSize: TabBarIndicatorSize.label,),
            //Todo TabBarView
            Expanded(
                child: TabBarView(children: [
              //DonutPage
              DonutTab(),
              //BurgerPage
              BurgerTab(),
              //SmoothiePage
              SmoothieTab(),
              //PancackPage
              PancakeTab(),
              //PizzaPage 
              PizzaTab(),
            ])),
          ],
        ),
      ),
    );
  }
}
