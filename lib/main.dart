//import 'package:camplay_app/my_profile_page.dart';
//import 'package:camplay_app/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Flutter Demo',
       theme: ThemeData(
         primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
     );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOption = [
    Text(
      'Index 0 : Search',
      style: optionStyle,
    ),
    Text(
      'Index 1 : Shop',
      style: optionStyle,
    ),
    Text(
      'Index 2 : Home',
      style: optionStyle,
    ),
    Text(
      'Index 3 : Note',
      style: optionStyle,
    ),
    Text(
      'Index 4 : Profile',
      style: optionStyle,
    ),
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
        title: Text('Home'),
      ),
      body: Center(

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'search',

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.note_add,
              color: Colors.black,
            ),
            label: 'note',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_identity,
              color: Colors.black,
            ),
            label: 'profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

