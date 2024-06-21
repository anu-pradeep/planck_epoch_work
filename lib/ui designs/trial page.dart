// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//         appBar: AppBar(
//             title: Text('GeeksforGeeks'),
//             backgroundColor: Colors.greenAccent[400],
//             leading: IconButton(
//               icon: Icon(Icons.menu),
//               onPressed: () {},
//               tooltip: 'Menu',
//             ) //IconButton
//             ), //AppBar
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(14.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Row(
//                   // mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Flexible(
//                       flex: 1,
//                       fit: FlexFit.tight,
//                       child: Container(
//                         height: 175,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.red,
//                         ), //BoxDecoration
//                       ), //Container
//                     ), //Flexible
//                     SizedBox(
//                       width: 20,
//                     ), //SizedBox
//                     Flexible(
//                       flex: 1,
//                       fit: FlexFit.loose,
//                       child: Container(
//                           height: 175,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.red,
//                           ) //BoxDecoration
//                           ), //Container
//                     ) //Flexible
//                   ],
//                 ),
//                 SizedBox(height: 10,),//Row
//                 Flexible(
//                   flex: 1,
//                   fit: FlexFit.loose,
//                   child: Container(
//                     width: 380,
//                     height: 200,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.blue), //BoxDecoration
//                   ), //Container
//                 ),
//                 SizedBox(height: 10,),//Flexible
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Flexible(
//                       flex: 2,
//                       fit: FlexFit.tight,
//                       child: Container(
//                         width: 180,
//                         height: 300,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.cyan,
//                         ), //BoxDecoration
//                       ), //Container
//                     ), //Flexible
//                     const SizedBox(
//                       width: 20,
//                     ), //SizedBox
//                     Flexible(
//                         flex: 2,
//                         fit: FlexFit.tight,
//                         child: Container(
//                             width: 180,
//                             height: 300,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.cyan,
//                             ) //BoxDecoration
//                             ) //Container,
//                         ) //Flexible
//                   ],
//                 ), //Row
//               ],
//             ), //Column
//           ), //Container
//         ) //Center
//         ), //Scaffold
//
//     debugShowCheckedModeBanner: false,
//   )); //MaterialApp
// }
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: flexiwidget(),
  ));
}
class flexiwidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("flexible widget example",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,),
        body:Column(
          children: [
            Flexible(
                flex:2,
                child: Container(height: 100,color: Colors.black,)),
            Row(
              children: [
                Flexible(flex: 3,
                  child: Container(color: Colors.blue,height: 150,width: 250,),),Container(color: Colors.yellow,height: 150,width: 100,),Container(color: Colors.purple,
                  height: 150,width: 153,)
              ],
            ),
            Row(
              children: [Flexible(child: Container(color: Colors.green,width: 200,height: 150,)),Container(color: Colors.purpleAccent,height: 150,width: 200,),
                Container(color: Colors.blueGrey,height: 150,width: 200,)],
            ),
            Row(
              children: [Flexible(
                  flex: 2,child: Container(color: Colors.red,height: 100,))],
            )
          ],
        )
    );
  }

}