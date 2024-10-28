import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar('ami action bar', context);
              },
              icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 0,
          child: Icon(Icons.search),
          onPressed: () {
            MySnackBar('ami action bar', context);
          }),
      body: Container(),
    );
  }
}
