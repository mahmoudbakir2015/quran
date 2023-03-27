import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/modules/catalogue/catalogue.dart';
import 'package:quran/modules/favourites/favourites.dart';
import 'package:quran/modules/seal/seal.dart';

class CatalogueLayout extends StatefulWidget {
  const CatalogueLayout({Key? key}) : super(key: key);

  @override
  State<CatalogueLayout> createState() => _CatalogueLayoutState();
}

class _CatalogueLayoutState extends State<CatalogueLayout> {
  int currentIndex = 0;
  List<Widget> screens = const [
    CataloguePage(),
    Seal(),
    Favourites(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: "الفهرس",
            icon: Icon(
              CupertinoIcons.list_bullet,
            ),
          ),
          BottomNavigationBarItem(
            label: "الختمه",
            icon: Icon(
              CupertinoIcons.check_mark_circled_solid,
            ),
          ),
          BottomNavigationBarItem(
            label: "مميزه بنجمة",
            icon: Icon(
              CupertinoIcons.star_fill,
            ),
          ),
        ],
      ),
    );
  }
}
