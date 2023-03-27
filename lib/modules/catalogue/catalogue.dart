import 'package:flutter/material.dart';

class CataloguePage extends StatelessWidget {
  const CataloguePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(
          15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "الفهرس ",
            ),
            buildText("الجزء الاول"),
            buildNameSora(
              numOfSora: 1,
              nameOfSora: 'الفاتحه',
              startPageOfSora: 1,
              type: 'مكية',
              numOfVerses: 7,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Widget buildNameSora({
    required int numOfSora,
    required String nameOfSora,
    required int startPageOfSora,
    required String type,
    required int numOfVerses,
  }) {
    return ListTile(
      leading: CircleAvatar(
        child: Text("$numOfSora"),
      ),
      title: Text(nameOfSora,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          )),
      subtitle: Row(
        children: [
          Text(
            "-" "$startPageOfSora" " الصفحة ",
          ),
          Text("-" "$numOfVerses" "اياتها "),
          Text(
            type,
          ),
        ],
      ),
    );
  }
}
