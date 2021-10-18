import 'package:defood/screens/cards/card1.dart';
import 'package:defood/screens/cards/card2.dart';
import 'package:defood/screens/cards/card3.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: Add state variables and functions
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DeFood',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.tag),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
