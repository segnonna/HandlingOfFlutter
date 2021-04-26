
import 'package:flutter/material.dart';

void main(){
  runApp(HeroApp());
}

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main screen"),
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
        child: HeroImage(imageUrl: "https://picsum.photos/250?image=9"),
      ),
    );
  }

}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
            child: HeroImage(imageUrl: "https://picsum.photos/250?image=9") ,
        ),
      ),
    );
  }
}

class HeroImage extends StatelessWidget {
  HeroImage({required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: "IroImage",
        child:  Image.network(imageUrl)
    );
  }
}
