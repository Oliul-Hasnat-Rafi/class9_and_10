import 'package:class9_and_10/grid.dart';
import 'package:class9_and_10/list.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedTab = 0;

  List<Widget> page = [Listview(), Gridview()];
  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 9 and 10'),
        centerTitle: true,
      ),
      body: page[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo.shade300,
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined), label: "List View"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_outlined), label: "Grid View"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade400,
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
