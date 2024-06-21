import 'package:flutter/material.dart';
import 'package:planck_epoch_works/ui%20designs/rich%20text.dart';
import 'package:planck_epoch_works/ui%20designs/stack.dart';

import 'carousel slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tabbar(),
  ));
}

class tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // adding this by wrapping
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("whatsapp"),
          backgroundColor: Colors.green,
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(Icons.camera_alt_outlined),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("settings")),
                const PopupMenuItem(child: Text("invite")),
                const PopupMenuItem(child: Text("help")),
              ];
            }),
          ],
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(
                child: Text("chat"),
              ),
              Tab(
                child: Text("status"),
              ),
              Tab(
                child: Text("call"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(child:  Text("contact",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),)),
            const RichtextSample(),
            StackSample(),
            const CarouselSliding(),
          ],
        ),
      ),
    );
  }
}
