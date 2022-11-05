import 'package:flutter/material.dart';
import 'package:recipe_1/constant/constant.dart';
import 'package:recipe_1/views/view_number_one.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> myMenus = [
    const FirstMenu(),
    const Text('page 2'),
    const Text('page 3'),
    const Text('page 4'),
    const Text('page 5'),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(child: myMenus[index]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          print(value);
          setState(() {
            index = value;
          });
        },
        currentIndex: 1,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Style.colorMauve,
            ),
            label: 'person',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Style.colorMauve,
            ),
            label: 'timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timer,
              color: Style.colorMauve,
            ),
            label: 'ringtone',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tiktok,
              color: Style.colorMauve,
            ),
            label: 'label',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Style.colorMauve,
            ),
            label: 'settings',
          ),
        ],
      ),
    );
  }
}
