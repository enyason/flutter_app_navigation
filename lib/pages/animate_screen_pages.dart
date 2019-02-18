import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HeroPage'),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Container(
            child: Center(
              child: Hero(
                  tag: "hero",
                  child: Image.network("https://picsum.photos/250?image=9")),
            ),
          ),
        ),
      ),

    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            child: Center(
              child: Hero(
                  tag: "hero",
                  child: Image.network("https://picsum.photos/250?image=9")),
            ),
          ),
        ),
      ),

    );
  }
}
