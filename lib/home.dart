import 'package:flutter/material.dart';
import 'package:untitled2/pages/home_page.dart';
import 'package:untitled2/pages/profile_page.dart';
import 'package:untitled2/pages/search_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  int _selectedIndex =0;
  final _pages =[HomePage(),ProfilePage(),SearchPage()];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   appBar: AppBar(
     backgroundColor: Colors.purple[200],
     title: const Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Icon(Icons.star,
           color: Colors.white,
         ),
         Text(' Creative App',
           style: TextStyle(color: Colors.white),
         ),
       ],
     ),
   ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label : 'Home' ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label : 'Profile' ),
          BottomNavigationBarItem(icon: Icon(Icons.search),label : 'Search' ),
        ],
      ),
    );
  }
}
