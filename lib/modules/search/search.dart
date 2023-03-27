import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
                height: 100,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text("إلغاء"),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                          ),
                          suffixIcon: InkWell(
                            child: Icon(
                              CupertinoIcons.clear_circled_solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              buildText(
                text: 'السور',
                num: 0,
              ),
              const SizedBox(
                height: 5,
              ),
              buildSearchSora(),
              const SizedBox(
                height: 5,
              ),
              buildText(
                text: 'السور',
                num: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildText({
    required String text,
    required int num,
  }) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildSearchSora() {
    return Container(
      padding: const EdgeInsets.all(
        5,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("455"),
          Text("name " " 42"),
        ],
      ),
    );
  }
}
