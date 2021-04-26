import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        ExtractArgumentScreen.routeName: (context) => ExtractArgumentScreen()
      },
    )
  );
}
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch screen'),
          onPressed: () {
            Navigator.pushNamed(context, ExtractArgumentScreen.routeName, arguments: ScreenArguments(
              'Extract Arguments Screen',
              'This message is extracted in the build method.',
            ));
          },
        ),
      ),
    );
  }
}

class ExtractArgumentScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
