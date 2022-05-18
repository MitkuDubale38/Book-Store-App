import 'package:flutter/material.dart';
import 'screens/appbar.dart';
import 'screens/header_with_searchBar.dart';
import 'screens/row_titles.dart';
import 'package:/flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(Index());
}

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: "Book Store Ethiopia",
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(),
      body: Column(
        children: [
          Header(),
          RowTitles(title_name: "New Books", btn_action: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/lelasew.jpeg"),
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 5),
                        Text("  ሌላሠው", style: TextStyle(fontSize: 18), textAlign: TextAlign.left),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/sebez.jpeg"),
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 5),
                        Text("  ሰበዝ", style: TextStyle(fontSize: 18), textAlign: TextAlign.left),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/hastengaw.png"),
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 5),
                        Text("  ሀሰተኛው", style: TextStyle(fontSize: 18), textAlign: TextAlign.left),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
