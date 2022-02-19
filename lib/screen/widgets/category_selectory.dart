import 'package:flutter/material.dart';

class CategorySlectory extends StatefulWidget {
  const CategorySlectory({Key? key}) : super(key: key);

  @override
  _CategorySlectoryState createState() => _CategorySlectoryState();
}

class _CategorySlectoryState extends State<CategorySlectory> {
  int categoryselected = 0;
  List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                categoryselected = index;
              });
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontSize: 24.0,
                  color:
                      index == categoryselected ? Colors.white : Colors.white10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
