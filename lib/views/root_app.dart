import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:spotify/views/home_page.dart';

int activeTabfinal = 0;
int activeTab = 0;

class RootApp extends StatefulWidget {
  RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }
}

class getFooter extends StatefulWidget {
  getFooter({Key? key}) : super(key: key);

  @override
  _getFooterState createState() => _getFooterState();
}

class _getFooterState extends State<getFooter> {
  @override
  Widget build(BuildContext context) {
    List items = [
      Icon(Icons.home),
      Icon(Icons.book),
      Icon(Icons.search),
      Icon(Icons.settings),
    ];
    return Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(items.length, (index) {
                return IconButton(
                    icon: (items[index]),
                    color: activeTab == index ? Colors.green : Colors.white,
                    onPressed: () {
                      setState(() {
                        activeTab = index;
                        activeTabfinal = index;
                      });
                    });
              })),
        ));
  }
}

class getBody extends StatefulWidget {
  getBody({Key? key}) : super(key: key);

  @override
  _getBodyState createState() => _getBodyState();
}

class _getBodyState extends State<getBody> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return IndexedStack(index: activeTab, children: [
      HomePage(),
      Center(
        child: Text(
          "Home",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Center(
        child: Text("Library",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
      Center(
        child: Text(
          "Setting",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ]);
  }
}
