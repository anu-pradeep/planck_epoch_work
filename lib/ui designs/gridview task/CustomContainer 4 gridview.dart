import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final String containerText;
  final String containerImages;
  const CustomContainer(
      {super.key, required this.containerText, required this.containerImages});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.black26),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      height: 30,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              widget.containerImages,
              height: 50,
              width: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 08),
            child: Text(
              widget.containerText,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CustomContainer extends StatefulWidget {
//   final String containerText;
//   final String containerImages;
//   const CustomContainer({super.key, required this.containerText, required this.containerImages});
//
//   @override
//   State<CustomContainer> createState() => _CustomContainerState();
// }
//
// class _CustomContainerState extends State<CustomContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           color: Colors.grey[200],
//           border: Border.all(color: Colors.black26),
//           borderRadius: const BorderRadius.all(
//             Radius.circular(20),
//           ),
//         ),height: 35,
//      child: Row(
//        children: [
//          // Image(image: NetworkImage(widget.containerImages as String),),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Image.network(widget.containerImages,height: 50,width: 30,),
//          ),
//
//          Padding(
//            padding: const EdgeInsets.only(right: 08),
//            child: Text(widget.containerText,style: const TextStyle(fontSize: 12),),
//          ),
//        ],
//      ),
//     );
//   }
// }
