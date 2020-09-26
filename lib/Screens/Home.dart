import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          // leading: CircleAvatar(
          //   radius: 20,
          //   // child: FlutterLogo(),
          // ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Events",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        preferredSize: Size.fromHeight(45),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {},
          child: Text("No events yet, Check back later"),
        ),
      ),
    );
  }
}
