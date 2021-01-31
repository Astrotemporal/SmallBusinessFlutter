import 'package:flutter/material.dart';
import 'package:smallbusinessflutter/provider/SmallBusinessProvider.dart';
import 'package:smallbusinessflutter/widgets/Navbar.dart';

class Map extends StatelessWidget {
  static const routeName = "/map";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          ],
        )
      ),
      bottomNavigationBar: Navbar(),
      extendBody: true,
    );
  }
}