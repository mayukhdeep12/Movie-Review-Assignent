import "package:flutter/material.dart";
import 'moviedata.dart';

class HomePage extends StatelessWidget {
  Student movieData = Student();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: FutureBuilder<List>(
                future: movieData.getAllStudent(),
                builder: (context, snapshot) {
                  print(snapshot.data);
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, i) {
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/spiderman.jpeg',
                                    height: 200,
                                  ),
                                  ListTile(
                                    title: Text(
                                      snapshot.data![i]['stuname'],
                                      style: TextStyle(fontSize: 30.0),
                                    ),
                                    subtitle: Text(
                                      snapshot.data![i]['email'],
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.star_border),
                                        color: Colors.blue,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FavouritePage()));
                                        },
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.watch_later),
                                        color: Colors.blue,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      WatchlistPage()));
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  } else {
                    return const Center(
                      child: Text("No Data"),
                    );
                  }
                })));
  }
}

class FavouritePage extends StatelessWidget {
  // Declare a field that holds the Todo.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset('assets/spiderman.jpeg'),
    ));
  }
}

class WatchlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset('assets/spiderman.jpeg'),
    ));
  }
}
