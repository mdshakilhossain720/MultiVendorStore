

import 'package:flutter/material.dart';
import 'package:multivendorstore/views/nav_screen/account_screen.dart';
import 'package:multivendorstore/views/nav_screen/cart_screen.dart';
import 'package:multivendorstore/views/nav_screen/caterories_screen.dart';
import 'package:multivendorstore/views/nav_screen/home_screen.dart';
import 'package:multivendorstore/views/nav_screen/search_screen.dart';
import 'package:multivendorstore/views/nav_screen/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex=0;

  List<Widget> _page=[
    HomeScreen(),
    CategoriesScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (value){
          setState(() {
            _pageIndex=value;
          });
        },
          type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black45,
          selectedItemColor: Colors.yellow,


          items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon:Icon(Icons.category),label: "categories"),
        BottomNavigationBarItem(icon:Icon(Icons.shop),label: "STORE"),
        BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart"),
            BottomNavigationBarItem(icon:Icon(Icons.search),label: "Search"),
      ]),

      body: _page[_pageIndex],

    );
  }
}
