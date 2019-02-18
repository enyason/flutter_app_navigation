import 'package:flutter/material.dart';
import 'package:flutter_app_navigation/pages/animate_screen_pages.dart';
import 'package:flutter_app_navigation/pages/page_navigation.dart';
import 'package:flutter_app_navigation/pages/page_return_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/first': (context) => FirstRoute(),
        '/second': (context) => SecondRoute(),
        '/hero': (context) => HeroPage(),
        '/detail': (context) => DetailPage(),
        '/selection':(context)=> SelectionButton(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Navigation Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          listItem("Animating a Widget across screens", context, "/hero"),
          Divider(
            height: 1.0,
          ),
          listItem("Navigate to a new screen and back", context, "/first"),
          Divider(
            height: 1.0,
          ),
          listItem("Navigate with named routes",context,"/first"),
          Divider(
            height: 1.0,
          ),
          listItem("Return data from a screen",context,"/selection"),
          Divider(
            height: 1.0,
          ),
        ],
      ),
    );
  }

  ListTile listItem(title, context, routeName) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      title: Text(title),
    );
  }
}
