import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/layout/catalogue_layout.dart';
import 'package:quran/modules/search/search.dart';
import 'package:quran/shared/componnents/componnents.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "The Holy Quran",
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.settings,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => navigateTo(
              context: context,
              widget: const Search(),
            ),
            icon: const Icon(
              CupertinoIcons.search,
            ),
          ),
          IconButton(
            onPressed: () => navigateTo(
              context: context,
              widget: const CatalogueLayout(),
            ),
            icon: const Icon(
              CupertinoIcons.list_bullet,
            ),
          ),
        ],
      ),
    );
  }
}
