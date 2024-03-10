import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:main_ecommerce/ForgotPage.dart';
import 'package:main_ecommerce/RegisterPage.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  bool passenable = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  //margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //vaibhav text
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      child: Text('Vaibhav E-Commerce App',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.cyan
                      ),
                      ),
                    ),
                    //name container
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: SizedBox(
                        width: 300,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Enter Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    //password container
                    Container(
                      margin: const EdgeInsets.only(top:40),
                      child: SizedBox(
                        width: 300,
                        child: TextField(
                          controller: passwordController,
                          obscureText: passenable,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              labelText: 'Enter Password',
                              border: OutlineInputBorder(),
                              suffix: IconButton(onPressed: (){ //add Icon button at end of TextField
                                setState(() { //refresh UI
                                  if(passenable){ //if passenable == true, make it false
                                    passenable = false;
                                  }else{
                                    passenable = true; //if passenable == false, make it true
                                  }
                                });
                              }, icon: Icon(passenable == true?Icons.remove_red_eye:Icons.password))
                          ),
                        ),
                      ),
                    ),
                    //Forgot password container
                    Container(
                        margin:const EdgeInsets.only(top:30),
                        child:TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered))
                                    return Colors.blue.withOpacity(0.04);
                                  if (states.contains(MaterialState.focused) ||
                                      states.contains(MaterialState.pressed))
                                    return Colors.blue.withOpacity(0.12);
                                  return null; // Defer to the widget's default.
                                },
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ForgotPage()),
                              );
                            },
                            child: Text('Forgot password')
                        )
                    ),
                    //submit container
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child:ElevatedButton(
                        onPressed:
                          signIn,
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductPage()),
                          );*/
                        child: Text('Submit'),
                      ),
                    ),

                    //signup button
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child:SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterPage()),
                            );
                          },
                          child: Text('SingUp'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future signIn() async{
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch(e){
        print(e);
    }
  }
}
