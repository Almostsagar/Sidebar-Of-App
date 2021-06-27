import 'package:flutter/material.dart';


// ignore: camel_case_types
class myLearningScreen extends StatefulWidget {
  const myLearningScreen({Key? key}) : super(key: key);

  @override
  _myLearningScreenState createState() => _myLearningScreenState();
}

// ignore: camel_case_types
class _myLearningScreenState extends State<myLearningScreen> {

  int _selectedIndex = 0;
  String dropdownValue = 'All Courses';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logo"),
    actions: <Widget>[
    IconButton(
    icon: const Icon(Icons.brightness_6),
    tooltip: 'Show Snackbar',
    onPressed: () {}
      ),

  ],backgroundColor: Colors.grey,
    ),
    bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
              backgroundColor:Colors.grey
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'wishlist',
              backgroundColor:Colors.grey
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
              backgroundColor:Colors.grey
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts),
            label: 'My learning',
              backgroundColor:Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'My Accounts',
              backgroundColor:Colors.grey
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap:_onItemTapped,
      backgroundColor:Colors.black12,
      )
    );
  }
}