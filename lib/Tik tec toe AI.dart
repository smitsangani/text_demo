import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Ai(),));
}
class Ai extends StatefulWidget {
  const Ai({super.key});

  @override
  State<Ai> createState() => _AiState();
}

class _AiState extends State<Ai> {
  bool b=true;
  List l=List.filled(9, ''),turn=List.filled(9, '');
  List num=List.filled(9, null);
  int t=0;
  String msg='';

  get(int a)
  {
    int? r;
    if(l[a]!='X' && l[a]!='0') {
      if(t % 2 == 0)
      {
        l[a] = 'X';
        num[t]=a;
      }
      else
      {
        do{
          r=Random().nextInt(9);
        }while(num.contains(r));
        l[r] = '0';
        num[t]=r;
      }
      t++;
    }
    win();
    setState(() {});
  }
  void win()
  {
    if((l[0]=='X' && l[1]=='X' && l[2]=='X') || (l[3]=='X' && l[4]=='X' && l[5]=='X') || (l[6]=='X' && l[7]=='X' && l[8]=='X') || (l[0]=='X' && l[3]=='X' && l[6]=='X') || (l[1]=='X' && l[4]=='X' && l[7]=='X') || (l[2]=='X' && l[5]=='X' && l[8]=='X') || (l[0]=='X' && l[4]=='X' && l[8]=='X') || (l[2]=='X' && l[4]=='X' && l[6]=='X'))
    {
      msg='Player X is win.';
      b=false;
    }
    else if((l[0]=='0' && l[1]=='0' && l[2]=='0') || (l[3]=='0' && l[4]=='0' && l[5]=='0') || (l[6]=='0' && l[7]=='0' && l[8]=='0') || (l[0]=='0' && l[3]=='0' && l[6]=='0') || (l[1]=='0' && l[4]=='0' && l[7]=='0') || (l[2]=='0' && l[5]=='0' && l[8]=='0') || (l[0]=='0' && l[4]=='0' && l[8]=='0') || (l[2]=='0' && l[4]=='0' && l[6]=='0'))
      msg='Player 0 is win.';
    else if(l[0]!='' && l[1]!='' && l[2]!='' && l[3]!='' && l[4]!='' && l[5]!='' && l[6]!='' && l[7]!='' && l[8]!='')
      msg='The mach is Draw';
    if(t%2==0)
      for(int i=0;i<l.length;i++)
        if(num[i]==null)
          get(num[i]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tik Tec Toe')),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
        Expanded(
          child: Row(children: [
            Expanded(child: InkWell(onTap: () => (b==true)?get(0):null,child:Container(margin: EdgeInsets.all(20),color: Colors.blue,alignment: Alignment.center,child: Text(l[0],style: TextStyle(fontSize: 48)),),)),
            Expanded(child: InkWell(onTap: () => (b==true)?get(1):null,child:Container(margin: EdgeInsets.all(20),color: Colors.blue,alignment: Alignment.center,child: Text(l[1],style: TextStyle(fontSize: 48)),),)),
            Expanded(child: InkWell(onTap: () => (b==true)?get(2):null,child:Container(margin: EdgeInsets.all(20),color: Colors.blue,alignment: Alignment.center,child: Text(l[2],style: TextStyle(fontSize: 48)),),)),
          ],),
        ),
        Expanded(
          child: Row(children: [
            Expanded(child: InkWell(onTap: () => (b==true)?get(3):null,child:Container(margin: EdgeInsets.all(20),color: Colors.blue,alignment: Alignment.center,child: Text(l[3],style: TextStyle(fontSize: 48)),),)),
            Expanded(child: InkWell(onTap: () => (b==true)?get(4):null,child:Container(margin: EdgeInsets.all(20),color: Colors.blue,alignment: Alignment.center,child: Text(l[4],style: TextStyle(fontSize: 48)),),)),
            Expanded(child: InkWell(onTap: () => (b==true)?get(5):null,child:Container(margin: EdgeInsets.all(20),color: Colors.blue,alignment: Alignment.center,child: Text(l[5],style: TextStyle(fontSize: 48)),),)),
          ],),
        ),
        Expanded(
          child: Row(children: [
            Expanded(child: InkWell(onTap: () => (b==true)?get(6):null,child:Container(margin: EdgeInsets.all(20),color: Colors.blue,alignment: Alignment.center,child: Text(l[6],style: TextStyle(fontSize: 48)),),)),
            Expanded(child: InkWell(onTap: () => (b==true)?get(7):null,child:Container(margin: EdgeInsets.all(20),color: Colors.blue,alignment: Alignment.center,child: Text(l[7],style: TextStyle(fontSize: 48)),),)),
            Expanded(child: InkWell(onTap: () => (b==true)?get(8):null,child:Container(margin: EdgeInsets.all(20),color: Colors.blue,alignment: Alignment.center,child: Text(l[8],style: TextStyle(fontSize: 48)),),)),
          ],),
        ),
        Text(msg,style: TextStyle(fontSize: 72),),
        ElevatedButton(onPressed: () {
          msg='';
          l=List.filled(9, '');
          t=0;
          num=List.filled(9, null);
          b=true;
          setState(() {});
        },
            child: Text('Reset',style: TextStyle(fontSize: 24),)),

      ],),
    );
  }
}
