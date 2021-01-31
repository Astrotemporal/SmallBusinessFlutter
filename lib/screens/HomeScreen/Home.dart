import 'dart:ui';

import 'package:smallbusinessflutter/provider/SmallBusinessProvider.dart';
import 'package:flutter/material.dart';
import 'package:smallbusinessflutter/widgets/Navbar.dart';

class Home extends StatelessWidget {
  static const routeName = "/";
  static const pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    child: Text("Home",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.w100,),
                    ),
                  ),
                ),
              ],
            ),
      bottomNavigationBar: Navbar(),
    );
  }
}