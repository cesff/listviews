import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  List<Color> colors = [
    Colors.black,
    Colors.amber,
    Colors.red,
    Colors.purple,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.indigo,
    Colors.brown,
    Colors.grey,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('ListView'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: (ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 100,
                          color: Colors.red,
                        ),
                        Container(
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          width: 100,
                          color: Colors.black,
                        ),
                        Container(
                          width: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 100,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 100,
                          color: Colors.green,
                        ),
                        Container(
                          width: 100,
                          color: Colors.pink,
                        ),
                        Container(
                          width: 100,
                          color: Colors.purple,
                        ),
                        Container(
                          width: 100,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 100,
                          color: Colors.brown,
                        ),
                      ],
                    )),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 400,
                            height: 200,
                            color: colors[index],
                          );
                        }),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            height: 200,
                            color: colors[index],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
