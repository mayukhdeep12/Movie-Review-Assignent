import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviereviewassignment/pages.dart';

void main() {
  runApp(MaterialApp(
    title: "Discover Movies",
    home: BottomMenu(),
  ));
}

class BottomMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomMenuState();
  }
}

class _BottomMenuState extends State<BottomMenu> {
  var _pagesData = [HomePage(), FavouritePage(), WatchlistPage()];
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Movie Review App")),
        body: Center(
          child: _pagesData[_selectedItem],
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.movie), label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.watch_later), label: "Watchlist"),
            ],
            currentIndex: _selectedItem,
            onTap: (setValue) {
              setState(() {
                _selectedItem = setValue;
              });
            }));
  }
}
