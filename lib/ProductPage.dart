import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
class ProductPage extends StatefulWidget {
  @override
  _ProductPage createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> {
  List _items = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/tshirt_flipkart.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["t-shirt"];
    });
  }
  @override
  void initState(){
    super.initState();
    readJson();
  }

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: Padding(

        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child:Column(
            children: [
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

                  for /*( var i in _items )*/ (var i = 0 ;i<_items.length;i++)
                    Row(
                        children: [
                          //image container
                          Container(
                            margin: const EdgeInsets.only(top: 30,right: 5),
                            child: Image.network(
                              _items[i]["image"],
                            ),
                            width: 200,
                            height: 200,
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 30,left: 5),
                              child:Column(
                                children: [
                                  Container(
                                    width: 250,
                                    height: 80,
                                    /*child: new InkWell(
                                      child: new Text('Open Browser'),
                                      onTap: () => launchUrl('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
                                    ),*/
                                    child:Text(
                                      _items[i]["title"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,),
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 30,
                                    child:Text(_items[i]["price"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,),
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 30,
                                    child:Text(_items[i]["type"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,),
                                    ),
                                  ),
                                ],
                              )
                          )
                        ]
                    )
                ],
              ),

          )
        ),
    );
  }
}
