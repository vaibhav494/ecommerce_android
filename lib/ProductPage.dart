import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher_string.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPage createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> {
  final List<dynamic> _items = [];

  check_type(String i){
    if (i=='flipkart'){
      return 'assets/flipkart_logo.png';
    }
    if (i=='snapdeal'){
      return 'assets/snapdeal_logo.png';
    }
  }

  Future<void> loadJSONData() async {
    // Read the JSON files
    String jsonFileName1 = "assets/tshirt_flipkart.json";
    String jsonFileName2 = "assets/tshirt_snapdeal.json";
    String data1 = await rootBundle.loadString(jsonFileName1);
    String data2 = await rootBundle.loadString(jsonFileName2);

    // Parse JSON Data
    List<dynamic> dataList1 = jsonDecode(data1);
    List<dynamic> dataList2 = jsonDecode(data2);

    // Combine the Data
    _items.addAll(dataList1);
    _items.addAll(dataList2);

    // Randomize the Data
    _items.shuffle();
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    loadJSONData();
  }
  /*
  List _items = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/tshirt_flipkart.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["t-shirt"];
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }
  */

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: Padding(

          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Row(
                  //used for search
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
                      onPressed: () => FirebaseAuth.instance.signOut(),
                        // Implement search functionality here
                      child: Text('LogOut'),
                    ),
                  ],
                ),
                for /*( var i in _items )*/ (var i = 0; i < _items.length; i++)
                  Row(children: [
                    //image container
                    Container(
                      margin: const EdgeInsets.only(top: 30, right: 5),
                      child: Image.network(
                        _items[i]["image"],
                      ),
                      width: 170,
                      height: 170,
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 30, left: 5),
                        child: Column(
                          children: [
                            Container(
                              width: 199,
                              height: 80,
                              child: InkWell(
                                child: Text(
                                  _items[i]["title"],
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                onTap: () => launchUrlString(_items[i]["link"]),
                              ),
                            ),
                            Container(
                              width: 199,
                              height: 30,
                              child: Text(
                                _items[i]["price"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              width: 199,
                              height: 30,
                              child:Image.asset(
                                  check_type(_items[i]["type"])
                              ),
                              /*child: Text(
                                _items[i]["type"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),*/
                            ),
                          ],
                        ))
                  ])
              ],
            ),
          )),
    );
  }
}
