import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Tik(),));
}
class Tik extends StatefulWidget {
  const Tik({super.key});

  @override
  State<Tik> createState() => _TikState();
}

class _TikState extends State<Tik> {
  bool b=true;
  List l=List.filled(9, ''),turn=List.filled(9, '');
  int t=0;
  String msg='';

  get(int a)
  {
    if(l[a]!='X' && l[a]!='0') {
      (t % 2 == 0) ? l[a] = 'X' : l[a] = '0';
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
    else
      if(l[0]!='' && l[1]!='' && l[2]!='' && l[3]!='' && l[4]!='' && l[5]!='' && l[6]!='' && l[7]!='' && l[8]!='')
        msg='The mach is Draw';
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
          b=true;
          setState(() {});
        },
            child: Text('Reset',style: TextStyle(fontSize: 24),)),

      ],),
    );
  }
}
