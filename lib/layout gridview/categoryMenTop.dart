import 'package:bajulo/cart.dart';
import 'package:bajulo/homeScreen.dart';
import 'package:bajulo/layout gridview/layoutgrid%20men%20top.dart';
import 'package:bajulo/layout%20gridview/layoutgridAll.dart';
import 'package:bajulo/login%20fix.dart';
import 'package:bajulo/navbar.dart';
import 'package:bajulo/widget028Bottom.dart';
import 'package:bajulo/notif.dart';
import 'package:bajulo/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class categoryMenTop extends StatefulWidget {
  const categoryMenTop({super.key});

  @override
  State<categoryMenTop> createState() => _categoryMenTopState();
}

class _categoryMenTopState extends State<categoryMenTop> {
  @override
  Widget build(BuildContext context) {
  //   int _currentIndex = 0;
  // final List<Widget> _pages = [homeScreen(), search(), notif(), loginfix()];
  // List<Widget> body = const [
  //   Icon(Icons.home),
  //   Icon(Icons.search),
  //   Icon(Icons.notifications),
  //   Icon(Icons.person)
  // ];
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
       appBar: AppBar(
        title: Text("Men Top", style: TextStyle(fontFamily: "Poppins")),
        centerTitle: true,
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 20),
            icon: Icon(Icons.card_travel),
            onPressed: ()=> {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const cart()))
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: gridLayoutMenTop(),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Theme.of(context).colorScheme.tertiary,
      //   unselectedItemColor: Theme.of(context).colorScheme.background,
      //   selectedItemColor: Colors.white,
      //   iconSize: 30,
      //   currentIndex: _currentIndex,
      //   onTap: (int newIndex) {
      //     setState(() {
      //       _currentIndex = newIndex;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
      //     BottomNavigationBarItem(label: "", icon: Icon(Icons.search)),
      //     BottomNavigationBarItem(label: "", icon: Icon(Icons.notifications)),
      //     BottomNavigationBarItem(label: "", icon: Icon(Icons.person)),
      //   ],
      // ),
    );
  }
}