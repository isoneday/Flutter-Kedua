import 'package:aplikasi_pertama/latihan1.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aplikasi pertama',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First App'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.green,
                  ),
                  RaisedButton(
                    color: Colors.green,
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text('s'),
                  ),
                  RaisedButton(
                    color: Colors.red,
                  ),

                  //  Flexible(child:Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: RaisedButton( color: Colors.green,),
                  //   ),flex: 1,),
                  //  Flexible(child:Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: RaisedButton( color: Colors.green,),
                  //   ),flex: 1,),
                  //  Flexible(child:Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: RaisedButton( color: Colors.green,),
                  //   ),flex: 1,),
                  //  Flexible(child:Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: RaisedButton( color: Colors.green,),
                  //   ),flex: 1,),

                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: RaisedButton( color: Colors.green,),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: RaisedButton( color: Colors.green,),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: RaisedButton( color: Colors.green,),
                  // ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ));
  }
}
