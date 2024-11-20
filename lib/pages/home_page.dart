import 'package:flutter/material.dart';
import 'package:ngdemo11/models/user_model.dart';
import 'package:ngdemo11/services/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String text = "No name";

  @override
  void initState() {
    super.initState();
    // PrefsService.storeName("Mitya");


  _loadName();
  }


  _loadName() async {
    String result = await PrefsService.loadName();


    setState(() {
      text = result;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Shared Preferences"),
      ),
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}