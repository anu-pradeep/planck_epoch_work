import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCards extends StatelessWidget {
  final String immagess;
  final String textt1;
  final String textt2;
  final String textt3;
  // final List<dynamic> elevatedicons;
  final String elevatedtext;

  const CustomCards(
      {super.key,
      required this.immagess,
      required this.textt1,
      required this.textt2,
      required this.textt3,
      // required this.elevatedicons,
      required this.elevatedtext});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      child: Column(
        children: [
          const SizedBox(
            height: 05,
          ),
          Image(
            image: NetworkImage(immagess),
            height: 140,
          ),
          const SizedBox(
            height: 05,
          ),
          Text(
            textt1,
            style: GoogleFonts.abrilFatface(
                fontSize: 10, fontWeight: FontWeight.bold),
          ),
          Text(
            textt2,
            style: GoogleFonts.abel(fontSize: 12),
          ),
          const SizedBox(
            height: 05,
          ),
          Row(
            children: [
              Text(
                textt3,
                style: GoogleFonts.abel(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const SizedBox(
                width: 100,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: const RoundedRectangleBorder(),
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      elevatedtext,
                      style:
                          GoogleFonts.abel(fontSize: 10, color: Colors.white),
                    )
                  ]))
            ],
          )
        ],
      ),
    );
  }
}
