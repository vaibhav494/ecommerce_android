import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:main_ecommerce/LoginPage.dart';

class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      labelText: 'Enter your registered email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  onPressed: () async {
                    await resetPassword();
                    showAlertDialog(context);
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

  Future<void> resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: myController.text.trim(),
      );
    } catch (e) {
      // Handle error
      print('Error resetting password: $e');
    }
  }
  void showAlertDialog(BuildContext context) {
    Widget okButton = FloatingActionButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Done"),
      content: Text(
          "You will receive a mail on ${myController.text}, please verify and update your password"),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
