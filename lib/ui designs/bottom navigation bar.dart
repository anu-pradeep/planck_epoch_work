import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bottom(),
  ));
}

class bottom extends StatefulWidget {
  @override
  State<bottom> createState() => BottomNavigation();
}

class BottomNavigation extends State<bottom> {
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom Navigation Bar",
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Colors.blue[900]),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        color: Colors.grey[200],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[200],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueAccent[800],
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
        ],
      ),
    );
  }
}
