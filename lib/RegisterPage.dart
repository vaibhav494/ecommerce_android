import 'package:flutter/material.dart';
import 'package:main_ecommerce/LoginPage.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}
class _RegisterPage extends State<RegisterPage> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child :Align(
          alignment: Alignment.center,
          child : Column(

            children:[
              //enter name
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'First Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Last Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              //enter email
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              //password
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_rounded),
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child:ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}