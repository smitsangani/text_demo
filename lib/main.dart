import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  String ans = '',sy='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: (Text('The Textfild')))),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 8,child: Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: t1,
                  decoration: InputDecoration(
                    hintText: "Enter the value",
                    labelText: 'Enter the value',
                    border: OutlineInputBorder(),
                  ),
                ),
              )),
              Expanded(flex: (sy!=''?1:0),child: Container(alignment: Alignment.center,child: Text(sy,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 24),),)),
              Expanded(flex: 8,child: Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: t2,
                  decoration: InputDecoration(
                    hintText: "Enter the value",
                    labelText: 'Enter the value',
                    border: OutlineInputBorder(),
                  ),
                ),
              )),
              Expanded(flex:(sy!=''?4:0),child: Container(
                  // margin: EdgeInsets.all(20),
                  child: Text(ans!=''?' = $ans':'',style: TextStyle(fontSize: 24,fontWeight:FontWeight.bold),),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    ans=(int.parse(t1.text)+int.parse(t2.text)).toString();
                    sy='+';
                    setState(() {});
                  },
                  child: Text('Sum')),
              ElevatedButton(
                  onPressed: () {
                    ans = (int.parse(t1.text) - int.parse(t2.text)).toString();
                    sy='-';
                    setState(() {});
                  },
                  child: Text('Sub')),
              ElevatedButton(
                  onPressed: () {
                    ans = (int.parse(t1.text) * int.parse(t2.text)).toString();
                    sy='X';
                    setState(() {});
                  },
                  child: Text('Mul')),
              ElevatedButton(onPressed: (){
                ans=(int.parse(t1.text)/int.parse(t2.text)).toString();
                    sy='/';
                setState(() {});
              }, child: Text('Div'))
            ],
          ),
        ],
      ),
    );
  }
}
