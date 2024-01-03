import 'package:flutter/material.dart';
import 'package:main_ecommerce/LoginPage.dart';
class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}
//mail popup
final myController = TextEditingController();
class _ForgotPageState extends State<ForgotPage> {
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
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
              //Email Container
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
              //Submit button Container
              Container(
                margin: const EdgeInsets.only(top: 40),
                child:ElevatedButton(
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  child: Text('Submit'),
                ),
              ),
              //Remember password

            ],
          ),
        ),

      ),
    );
  }
}
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FloatingActionButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Done"),
    content: Text("you will receive a mail on ${myController.text} ,please verify and update your password"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}