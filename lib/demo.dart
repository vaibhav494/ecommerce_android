import 'package:flutter/material.dart';
class demo extends StatefulWidget {
  @override
  _demoPage createState() => _demoPage();
}

class _demoPage extends State<demo> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

      ),
    );
  }
}



