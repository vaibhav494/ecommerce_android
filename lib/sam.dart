import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home_Page> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home_Page> {
  final searchController = TextEditingController();

  double caloriesProgress = 0.6; // Example progress value, you can change it

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart),
            label: 'Chart',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person),
            label: 'person  ',
          ),


        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 40,
                width: 500,
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'Search for brand or products',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.mic),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),

            ),

            SizedBox(height: 20),

            Column(
              children:[
                //create this multiple times
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
                    child: Text('Content',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  )
                ],
                ),
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
                      child: Text('Content',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                    )
                  ],
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}