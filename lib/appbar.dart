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
  MyAppBar({required this.title});
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
            child: Column(
                children: [
                  Text("Helloword"),
                  MyButton()
                ],
            ),
          ))
        ],
      ),
    );
  }

}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("MyButton was tapped!");
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
  
}