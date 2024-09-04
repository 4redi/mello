import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/about.dart';
import 'tabs/quiz.dart';
import 'tabs/support.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

 void main()=> runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      title: "Mello",
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode:ThemeMode.system
    );
  }
}

final ThemeData lightTheme = ThemeData(
  //brightness: Brightness.light,
  scaffoldBackgroundColor: const Color.fromARGB(255, 220, 217, 217),
  primarySwatch: Colors.green,
  appBarTheme: const AppBarTheme(
    backgroundColor:  Color.fromARGB(255, 174, 211, 202), // Background color of the AppBar
    titleTextStyle:  TextStyle(color: Colors.white), // Title text color
    iconTheme:  IconThemeData(color: Colors.white), // Icon color
  ),
  tabBarTheme: const TabBarTheme(
    labelColor:  Color.fromARGB(255, 1, 13, 3), // Color for the selected tab
    unselectedLabelColor:  Color.fromARGB(255, 255, 255, 255), // Color for unselected tabs
    indicatorColor:  Color.fromARGB(255, 18, 60, 104), // Color of the tab indicator
  ),
);


final ThemeData darkTheme = ThemeData(
  //brightness: Brightness.light,
  
  primarySwatch: Colors.green,
  appBarTheme: const AppBarTheme(
    backgroundColor:  Color.fromARGB(255, 4, 75, 75), // Background color of the AppBar
    titleTextStyle:  TextStyle(color: Color.fromARGB(255, 189, 186, 186)), // Title text color
    iconTheme:  IconThemeData(color: Color.fromARGB(255, 123, 123, 123)), // Icon color
  ),
  tabBarTheme: const TabBarTheme(
    labelColor:  Color.fromARGB(255, 5, 75, 30), // Color for the selected tab
    unselectedLabelColor:  Color.fromARGB(255, 195, 195, 195), // Color for unselected tabs
    indicatorColor:  Color.fromARGB(255, 56, 57, 57), // Color of the tab indicator
  ),
);


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
 leading: const Padding(
    padding: EdgeInsets.only(left: 50.0), // Space from the left edge
    child: Icon(
      FontAwesomeIcons.cat,
      size: 45,
      color: Colors.white,
    ),
  ),


          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: const Text("Mello",style:TextStyle(fontFamily: "NerkoOne",fontSize: 50)),
          bottom: TabBar(
            indicatorColor: Theme.of(context).tabBarTheme.indicatorColor,
            labelColor: Theme.of(context).tabBarTheme.labelColor,
            unselectedLabelColor: Theme.of(context).tabBarTheme.unselectedLabelColor,
            tabs: const [
              Tab(icon:Icon(FontAwesomeIcons.house), child: Text("Home",style: TextStyle(fontSize: 17,fontFamily: "Overpass",fontWeight: FontWeight.bold))),
              Tab(icon:Icon(FontAwesomeIcons.circleInfo),child: Text("About",style: TextStyle(fontSize: 17,fontFamily: "Overpass",fontWeight: FontWeight.bold))),
              Tab(icon:Icon(FontAwesomeIcons.paw),child: Text("Quiz",style: TextStyle(fontSize: 17,fontFamily: "Overpass",fontWeight: FontWeight.bold))),
              Tab(icon:Icon(FontAwesomeIcons.handHoldingHeart),child: Text("Support",style: TextStyle(fontSize: 17,fontFamily: "Overpass",fontWeight: FontWeight.bold)))
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Home(),
            About(),
            Quiz(),
            Support(),
          ],
        ),
      ),
    );
  }
}
