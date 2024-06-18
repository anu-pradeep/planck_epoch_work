//**********NORMAL DRAWER CODE ***************//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     home: Draweer(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class Draweer extends StatelessWidget {
//   const Draweer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green[200],
//       appBar: AppBar(
//         title: const Text('Sample drawer'),
//         backgroundColor: Colors.green,
//       ),
//       body: const Center(
//         child: Text(
//           "Welcome to Sample drawer!!!",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20.0,
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.green,
//               ),
//               curve: Curves.slowMiddle,
//               child: Column(
//                 children: [
//                   Image(
//                     image: NetworkImage(
//                       "data:image/png;base64,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",
//                     ),
//                     height: 50,
//                   ),
//                   Text(
//                     'drawer',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                   Text(
//                     'drawer list',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               subtitle: const Text(
//                 "hello",
//                 style: TextStyle(fontSize: 10),
//               ),
//               trailing: Icon(
//                 Icons.settings,
//                 color: Colors.green[300],
//               ),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green[200],
//               ),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               subtitle: const Text(
//                 "hello",
//                 style: TextStyle(fontSize: 10),
//               ),
//               trailing: Icon(
//                 Icons.settings,
//                 color: Colors.green[300],
//               ),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green[200],
//               ),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               subtitle: const Text(
//                 "hello",
//                 style: TextStyle(fontSize: 10),
//               ),
//               trailing: Icon(
//                 Icons.settings,
//                 color: Colors.green[300],
//               ),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green[200],
//               ),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               subtitle: const Text(
//                 "hello",
//                 style: TextStyle(fontSize: 10),
//               ),
//               trailing: Icon(
//                 Icons.settings,
//                 color: Colors.green[300],
//               ),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green[200],
//               ),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               subtitle: const Text(
//                 "hello",
//                 style: TextStyle(fontSize: 10),
//               ),
//               trailing: Icon(
//                 Icons.settings,
//                 color: Colors.green[300],
//               ),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green[200],
//               ),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               subtitle: const Text(
//                 "hello",
//                 style: TextStyle(fontSize: 10),
//               ),
//               trailing: Icon(
//                 Icons.settings,
//                 color: Colors.green[300],
//               ),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green[200],
//               ),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               subtitle: const Text(
//                 "hello",
//                 style: TextStyle(fontSize: 10),
//               ),
//               trailing: Icon(
//                 Icons.settings,
//                 color: Colors.green[300],
//               ),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green[200],
//               ),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               subtitle: const Text(
//                 "hello",
//                 style: TextStyle(fontSize: 10),
//               ),
//               trailing: Icon(
//                 Icons.settings,
//                 color: Colors.green[300],
//               ),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green[200],
//               ),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               subtitle: const Text(
//                 "hello",
//                 style: TextStyle(fontSize: 10),
//               ),
//               trailing: Icon(
//                 Icons.settings,
//                 color: Colors.green[300],
//               ),
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green[200],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('CustomScrollView with GridView'),
//         ),
//         body: CustomScrollView(
//           slivers: [
//             const SliverAppBar(
//               pinned: true,
//               expandedHeight: 150.0,
//               flexibleSpace: FlexibleSpaceBar(
//                 title: Padding(
//                   padding: EdgeInsets.only(top: 50,right: 80),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)
//                           ,Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)
//                           ,Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)
//                           ,Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)
//                           ,Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)
//
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Text('GridView Example',style: TextStyle(fontSize: 05),),
//                         ],
//                       ),SizedBox(width: 20,),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SliverGrid(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, // Number of columns
//                 mainAxisSpacing: 10.0,
//                 crossAxisSpacing: 10.0,
//                 childAspectRatio: 1.0,
//               ),
//               delegate: SliverChildBuilderDelegate(
//                     (BuildContext context, int index) {
//                   return Container(
//                     color: Colors.teal[100 * (index % 9)],
//                     child: Center(
//                       child: Text('Item $index'),
//                     ),
//                   );
//                 },
//                 childCount: 20, // Number of items in the grid
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




//********************* DRAWER SAMPLE CODE WITH ALL DETAILS***************//
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AppDrawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppDrawer Example'),
      ),
      drawer: AppDrawer(),
      body: const Center(
        child: Text('Home Page Content'),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          // Header Section
          const UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("john.doe@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("data:image/png;base64,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"),
            ),
            // decoration: BoxDecoration(color: Colors.cyan),
          ),
          // Body Section
          Expanded(
            child: ListView(
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  // onTap: () {
                  //   Navigator.of(context).pop();
                  // },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  // onTap: () {
                  //   Navigator.of(context).pop();
                  // },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  // onTap: () {
                  //   Navigator.of(context).pop();
                  // },
                ),
              ],
            ),
          ),
          // Footer Section
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.privacy_tip),
                  title: const Text('Privacy Policy'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
