import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Draweer(),
    debugShowCheckedModeBanner: false,
  ));
}

class Draweer extends StatelessWidget {
  const Draweer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: const Text('Geeks for Geeks'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          "Welcome to Geeks for Geeks!!!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ) ,
              curve : Curves.slowMiddle,
              child: Column(
                children: [
                  Image(image: NetworkImage("data:image/png;base64,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",
                  ),height: 50,),
                  Text(
                    'Geeks for Geeks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Geeks for Geeks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              trailing: Icon(Icons.import_contacts),
            ),
            ListTile(
              title: Text('Item 2'),
              subtitle: Text("hello",style: TextStyle(fontSize: 10),),
              leading: CircleAvatar(),
              trailing: Icon(Icons.import_contacts),
            ),
            ListTile(
              title: Text('Item 3'),
              trailing: Icon(Icons.import_contacts),
            ),
            ListTile(
              title: Text('Item 4'),
            ),
            ListTile(
              title: Text('Item 5'),
              leading: CircleAvatar(),
            ),
            ListTile(
              title: Text('Item 6'),
              trailing: Icon(Icons.import_contacts),
            ),
            ListTile(
              title: Text('Item 7'),
            ),
            ListTile(
              title: Text('Item 8'),
            ),
            ListTile(
              title: Text('Item 9'),
              trailing: Icon(Icons.import_contacts),
            ),
            ListTile(
              title: Text('Item 10'),
            ),
            ListTile(
              title: Text('Item 11'),
              trailing: Icon(Icons.import_contacts),
            ),
          ],
        ),
      ),
    );
  }
}
