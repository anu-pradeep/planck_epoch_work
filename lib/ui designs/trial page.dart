import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CustomScrollView with GridView'),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              expandedHeight: 150.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: EdgeInsets.only(top: 50,right: 80),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)
                          ,Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)
                          ,Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)
                          ,Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)
                          ,Text('GridView Example',style: TextStyle(fontSize: 05),),SizedBox(width: 20,)

                        ],
                      ),
                      Row(
                        children: [
                          Text('GridView Example',style: TextStyle(fontSize: 05),),
                        ],
                      ),SizedBox(width: 20,),
                    ],
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    color: Colors.teal[100 * (index % 9)],
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
                childCount: 20, // Number of items in the grid
              ),
            ),
          ],
        ),
      ),
    );
  }
}
