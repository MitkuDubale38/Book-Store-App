import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/book_bg1.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                height: 40,
                width: MediaQuery.of(context).size.width / 1.08,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(
                    color: Colors.grey.shade100,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: const Icon(Icons.search, color: Colors.black54),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                        child: const TextField(
                          decoration: InputDecoration(border: InputBorder.none, hintText: 'Search'),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.filter_list_alt, color: Colors.black54),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
