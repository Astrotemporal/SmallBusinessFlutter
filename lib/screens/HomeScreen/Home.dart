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
        appBar: null,
        body: Column(
              children: [
                SafeArea(
                  child: FractionallySizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, left: 16, right: 16),
                      child: Text("Home",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 45, fontWeight: FontWeight.w100,),
                      ),
                    ),
                    widthFactor: 1,
                  ),
                ),
                SafeArea(
                  child: FractionallySizedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text("Home",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100,),
                      ),
                    ),
                    widthFactor: 1,
                  ),
                ),
              ],
            ),
      bottomNavigationBar: Navbar(),
    );
  }
}