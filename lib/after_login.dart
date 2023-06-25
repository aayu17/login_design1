import 'package:login_design1/pages/account_page.dart';
import 'package:login_design1/pages/add_page.dart';
import 'package:login_design1/pages/home_page.dart';
import 'package:login_design1/pages/search_page.dart';
import 'package:login_design1/pages/settings_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyAppk());
// }

class MyAppk extends StatelessWidget {
  const MyAppk({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final screens = [
    const HomePage(),
    const SearchPage(),
    const AccountPage(),
    const AddPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text("NEXT CODERS"),
        centerTitle: true,
      ),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue.shade50,
        buttonBackgroundColor: Colors.white,
        height: 55,
        index: index,
        onTap: (index) => setState(() {
          this.index = index;
        }),
        items: const [
          Icon(
            Icons.home,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.search,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.account_box,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.call,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.settings,
            size: 20,
            color: Colors.black,
          ),
        ],
        animationDuration: const Duration(milliseconds: 20),
        animationCurve: Curves.bounceIn,
      ),
    );
  }
}
