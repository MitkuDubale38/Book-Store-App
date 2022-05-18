import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowTitles extends StatelessWidget {
  String title_name;
  VoidCallback btn_action;

  RowTitles({
    required this.title_name,
    required this.btn_action,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${title_name}",
            style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: btn_action,
            child: Text(
              "More",
              style: TextStyle(color: Colors.teal, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
