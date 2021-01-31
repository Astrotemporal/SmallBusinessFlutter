import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smallbusinessflutter/provider/SmallBusinessProvider.dart';
import 'package:smallbusinessflutter/screens/HomeScreen/Home.dart';
import 'package:smallbusinessflutter/screens/MapScreen/Map.dart';
import 'package:smallbusinessflutter/screens/InfoScreen/Information.dart';
import 'package:smallbusinessflutter/models/Themes.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  SmallBusinessProvider provider = new SmallBusinessProvider();

  @override
  void initState() {
    super.initState();
    getPrefs();
  }

  void getPrefs() async {
    provider.theme = await provider.prefs.getTheme(); // not changeable yet
    provider.newUser = await provider.prefs.getNew(); // not changeable yet
    provider.navIndex = provider.newUser ? 1 : 0; // dynamic initial nav bar
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );*/
    return ChangeNotifierProvider(
        create: (_) {
          return provider;
        },
      child: Consumer<SmallBusinessProvider>(
          builder: (context, _, child) {
            return MaterialApp(
              title: 'Small Business Finder',
              routes : {
                Map.routeName: (context) => Map(),
                Home.routeName: (context) => Home(),
                Preferences.routeName: (context) => Preferences(),
              },
              initialRoute: provider.newUser ? Map.routeName : Home.routeName, // dynamic initial route
              theme: provider.theme == Themes.system ? Themes.light.theme : provider.theme.theme,
              darkTheme: Themes.dark.theme,
              );
          },
      ),
    );
  }
}
