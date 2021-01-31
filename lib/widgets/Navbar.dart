import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smallbusinessflutter/provider/SmallBusinessProvider.dart';
import 'package:smallbusinessflutter/screens/InfoScreen/Information.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SmallBusinessProvider>(context);

    return SafeArea(
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.language), label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "",),
        ],
        currentIndex: provider.navIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        onTap: (i) {
          provider.setNavIndex(i); // Need to fix later
          Navigator.pushNamed(context, Data.VIEWS[i]);
          },
      )
    );
  }
}