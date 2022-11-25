import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.white38,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 31,
          ),
        ),
        // ignore: prefer_const_constructors
        title: Text(
          "MY APP",
          style: const TextStyle(color: Colors.black, fontSize: 22),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
              size: 31,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        color: Colors.white38,
        backgroundColor: Colors.deepPurple,
        buttonBackgroundColor: Colors.lightBlue,
        onTap: (index) {
          print('Worked');
        },
        items: const [
          Icon(
            Icons.home,
            size: 31,
          ),
          Icon(
            Icons.favorite,
            size: 31,
          ),
          Icon(
            Icons.settings,
            size: 31,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: const [
            Image(
              image: AssetImage("images/wallpaper.png"),
              width: 620,
              height: 604,
            ),
          ],
        ),
      ),
    );
  }
}
