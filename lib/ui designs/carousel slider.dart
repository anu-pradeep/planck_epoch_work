import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: CarouselSliding(),
    debugShowCheckedModeBanner: false,
  ));
}

class CarouselSliding extends StatelessWidget {
  const CarouselSliding({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text(
          "Carousel slider sample",
          style: GoogleFonts.abrilFatface(color: Colors.white),
        ),
      ),
      body: Center(
        child: CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/06/02/12/59/book-794978_640.jpg",
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://img.lovepik.com/photo/48007/9556.jpg_wh860.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://png.pngtree.com/background/20230524/original/pngtree-beautiful-and-fresh-natural-mountain-scenery-for-background-photos-picture-image_2712286.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://as2.ftcdn.net/v2/jpg/03/05/50/59/1000_F_305505916_NESTG4pBBMuQUo2MZAvfJJGunFzy5YVJ.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://s1.1zoom.me/big0/397/Roads_Mountains_Scenery_461891.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2020/01/22/22/06/wyoming-4786394_640.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=2210&quality=70"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=2210&quality=70"),
                        fit: BoxFit.cover)),
              ),
            ],
            options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
                autoPlayCurve: Curves.bounceOut,
                autoPlayAnimationDuration: const Duration(microseconds: 800))),
      ),
    );
  }
}
