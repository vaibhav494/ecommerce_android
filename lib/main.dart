import 'package:flutter/material.dart';
import 'package:main_ecommerce/LoginPage.dart';
import 'package:main_ecommerce/ProductPage.dart';
import 'package:main_ecommerce/demo.dart';
import 'package:main_ecommerce/ForgotPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Vaibhav app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search bar and search button row
              Row(//used for search
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search for Products...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Implement search functionality here
                    },
                    child: Text('Search'),
                  ),
                ],
              ),
              //ROW FOR FIRST PRODUCT (IMAGE + DETAILS)
              Row(
                //margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image container
                  Container(
                    margin: const EdgeInsets.only(top: 30,right: 5),//basically margin top 40
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black
                    ),
                    width: 200,
                    height: 200,
                    child: Text('IMAGES',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  //product detail container
                  Container(
                    margin: const EdgeInsets.only(top: 30,left: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.deepOrange
                    ),
                    width: 250,
                    height: 200,
                    child: Text('PRODUCT DETAILS',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
              //ROW FOR SECOND PRODUCT (IMAGE + DETAILS)
              Row(
                //margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image container
                  Container(
                    margin: const EdgeInsets.only(top: 30,right: 5),//basically margin top 40
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black
                    ),
                    width: 200,
                    height: 200,
                    child: Text('IMAGES',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  //product detail container
                  Container(
                    margin: const EdgeInsets.only(top: 30,left: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.deepOrange
                    ),
                    width: 250,
                    height: 200,
                    child: Text('PRODUCT DETAILS',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
              //ROW FOR THIRD PRODUCT (IMAGE + DETAILS)
              Row(
                //margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image container
                  Container(
                    margin: const EdgeInsets.only(top: 30,right: 5),//basically margin top 40
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black
                    ),
                    width: 200,
                    height: 200,
                    child: Text('IMAGES',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  //product detail container
                  Container(
                    margin: const EdgeInsets.only(top: 30,left: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.deepOrange
                    ),
                    width: 250,
                    height: 200,
                    child: Text('PRODUCT DETAILS',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
              //ROW FOR FOURTH PRODUCT (IMAGE + DETAILS)
              Row(
                //margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image container
                  Container(
                    margin: const EdgeInsets.only(top: 30,right: 5),//basically margin top 40
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black
                    ),
                    width: 200,
                    height: 200,
                    child: Text('IMAGES',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  //product detail container
                  Container(
                    margin: const EdgeInsets.only(top: 30,left: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.deepOrange
                    ),
                    width: 250,
                    height: 200,
                    child: Text('PRODUCT DETAILS',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
              //ROW FOR FIFTH PRODUCT (IMAGE + DETAILS)
              Row(
                //margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image container
                  Container(
                    margin: const EdgeInsets.only(top: 30,right: 5),//basically margin top 40
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black
                    ),
                    width: 200,
                    height: 200,
                    child: Text('IMAGES',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  //product detail container
                  Container(
                    margin: const EdgeInsets.only(top: 30,left: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.deepOrange
                    ),
                    width: 250,
                    height: 200,
                    child: Text('PRODUCT DETAILS',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
              //ROW FOR SIXTH PRODUCT (IMAGE + DETAILS)
              Row(
                //margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image container
                  Container(
                    margin: const EdgeInsets.only(top: 30,right: 5),//basically margin top 40
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black
                    ),
                    width: 200,
                    height: 200,
                    child: Text('IMAGES',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  //product detail container
                  Container(
                    margin: const EdgeInsets.only(top: 30,left: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.deepOrange
                    ),
                    width: 250,
                    height: 200,
                    child: Text('PRODUCT DETAILS',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
              //ROW FOR SEVENTH PRODUCT (IMAGE + DETAILS)
              Row(
                //margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image container
                  Container(
                    margin: const EdgeInsets.only(top: 30,right: 5),//basically margin top 40
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black
                    ),
                    width: 200,
                    height: 200,
                    child: Text('IMAGES',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  //product detail container
                  Container(
                    margin: const EdgeInsets.only(top: 30,left: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.deepOrange
                    ),
                    width: 250,
                    height: 200,
                    child: Text('PRODUCT DETAILS',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
              //ROW FOR EIGHTH PRODUCT (IMAGE + DETAILS)
              Row(
                //margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image container
                  Container(
                    margin: const EdgeInsets.only(top: 30,right: 5),//basically margin top 40
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black
                    ),
                    width: 200,
                    height: 200,
                    child: Text('IMAGES',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  //product detail container
                  Container(
                    margin: const EdgeInsets.only(top: 30,left: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.deepOrange
                    ),
                    width: 250,
                    height: 200,
                    child: Text('PRODUCT DETAILS',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
              // Display search results here (ListView, GridView, etc.)
            ],
          ),
        ),
      ),
    );
  }
}
