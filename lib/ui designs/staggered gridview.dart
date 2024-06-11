// import 'package:flutter/material.dart';
//
// void main()
// {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Staggered(),
//   ));
// }
//
// class Staggered extends StatelessWidget
// {
//   const Staggered({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//
//         body: SingleChildScrollView(
//           child: StaggeredGrid.count(crossAxisCount: 4,
//             children: [
//               StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
//                   child:Container(color: Colors.blue,
//                   )
//               ),
//               StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
//                   child: Container(color: Colors.black,
//                   )),
//               StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount:1,
//                   child:Container(color: Colors.amber,
//                   )),
//               StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
//                   child: Container(color: Colors.purple,
//                   )),
//               StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
//                   child: Container(color: Colors.green,
//                   )),
//               StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
//                   child: Container(color: Colors.red,
//                   )),
//             ],),
//         )
//     );
//   }
// }