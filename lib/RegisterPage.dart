import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:main_ecommerce/LoginPage.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final hello = TextEditingController();
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child :Align(
          alignment: Alignment.center,
          child : Form(
            key:formKey,
            child: Column(

              children:[
                //enter email
                Container(

                  margin: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      autovalidateMode:AutovalidateMode.onUserInteraction,
                      validator: (email)=>
                      email!=null && !EmailValidator.validate(email)
                          ?"Enter a valid email"
                          :null,
                    ),
                  ),
                ),
                //password
                Container(

                  margin: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      autovalidateMode:AutovalidateMode.onUserInteraction,
                      validator: (password)=>
                      password!=null && password.length<6
                          ?"Enter min 6 character"
                          :null,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child:ElevatedButton(
                    onPressed: () {
                      signUp();
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
      ),
    );
  }
  Future signUp() async{
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch(e){
      print(e);
    }
  }
}