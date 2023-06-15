import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: num(),
  ));
}

class num extends StatefulWidget {
  const num({super.key});

  @override
  State<num> createState() => _numState();
}

class _numState extends State<num> {
  List l = List.filled(9, '');
  String msg = '';
  List<Color> co=List.filled(9, Colors.blue);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

      random();
      setState(() {});
  }
  random()
  {
    for (int i = 0; i < l.length; ) {
      int r = Random().nextInt(9);
      if (!l.contains(r))
      {
        l[i]=r;
        i++;
      }
    }
    for(int i=0;i<l.length;i++)
      if(l[i]==0) {
        l[i] = '';
        co[i]=Colors.transparent;
      }
  }
  fun(int a)
  {
    int k=0;
    for(int i=0;i<l.length;i++)
      if(l[i]=='')
        k=i;

    if((a==k+1 && (a!=3 && a!=6))
    || (a==k-1 && (a!=2 && a!=5))
    || (a==k+3 && (a!=0 && a!=1 && a!=2))
    || (a==k-3 && (a!=6 && a!=7 && a!=8)))
    {
      l[k]=l[a];
      l[a]='';
      co[k]=Colors.blue;
      co[a]=Colors.transparent;
    }
    int i=0;
    for(;i<l.length;i++){
      print(l[i].runtimeType);
      if(l[i]!=i+1)
        break;}
    print(i);
    if(i==l.length-1)
    {
      l[a]='9';
      co[a]=Colors.blue;
      msg='You win.';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number puzzle',style: TextStyle(fontSize: 24, color: Colors.black)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(onTap: () => fun(0),
                child: Container(
                  child: Text('${l[0]}', style: TextStyle(fontSize: 36)),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(

                    color: co[0],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(onTap: () => fun(1),
                child: Container(
                  child: Text('${l[1]}', style: TextStyle(fontSize: 36)),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: co[1],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(onTap: () => fun(2),
                child: Container(
                  child: Text('${l[2]}', style: TextStyle(fontSize: 36)),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: co[2],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(onTap: () => fun(3),
                child: Container(
                  child: Text('${l[3]}', style: TextStyle(fontSize: 36)),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: co[3],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(onTap: () => fun(4),
                child: Container(
                  child: Text('${l[4]}', style: TextStyle(fontSize: 36)),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:co[4],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(onTap: () => fun(5),
                child: Container(
                  child: Text('${l[5]}', style: TextStyle(fontSize: 36)),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: co[5],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(onTap: () => fun(6),
                child: Container(
                  child: Text('${l[6]}', style: TextStyle(fontSize: 36)),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: co[6],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(onTap: () => fun(7),
                child: Container(
                  child: Text('${l[7]}', style: TextStyle(fontSize: 36)),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: co[7],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(onTap: () => fun(8),
                child: Container(
                  child: Text('${l[8]}', style: TextStyle(fontSize: 36)),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: co[8],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
            ],
          )),
          Text(
            "$msg",
            style: TextStyle(fontSize: 48),
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       for(int i=0;i<9;i++)
          //         l[i]='';
          //       msg = '';
          //       co=List.filled(9, Colors.blue);
          //       random();
          //     },
          //     child: Text('Reset'))
        ],
      ),
    );
  }
}
