import 'package:flutter/material.dart';
import 'package:fluttertest/main.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: SafeArea(
      child: MyScaffold(),
    ),
  ));
}

class  MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null),

          Expanded(child: title),

          IconButton(icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null),

        ],
      ),
    );
  }

}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Column(
        children: [
          MyAppBar(title: Text('Example title', style: Theme.of(context).primaryTextTheme.headline6,)),
          Expanded(child: Center(
            child: Text("Helloword"),
          ))
        ],
      ),
    );
  }

}
