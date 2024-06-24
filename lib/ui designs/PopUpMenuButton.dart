import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton Example'),
        actions: [
          PopupMenuButton<MenuItem>(
            itemBuilder: (BuildContext context) {
              return menuItems.map((MenuItem item) {
                return PopupMenuItem<MenuItem>(
                  value: item,
                  child: ListTile(
                    leading: Icon(item.icon),
                    title: Text(item.title),
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Selected',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class MenuItem {
  final String title;
  final IconData icon;

  MenuItem(this.title, this.icon);
}

List<MenuItem> menuItems = [
  MenuItem('Item 1', Icons.star),
  MenuItem('Item 2', Icons.book),
  MenuItem('Item 3', Icons.music_note),
];
