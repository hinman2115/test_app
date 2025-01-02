import 'package:flutter/material.dart';
import 'auto_commit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Jio Cinema",style: TextStyle(
            color: Colors.white,
          ),),
          backgroundColor: Colors.purpleAccent,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.purple,
              )),
        ),
        body: Row(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "letes Movies",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Image(image: )
              ],
            )
          ],
        ));
  }
}
