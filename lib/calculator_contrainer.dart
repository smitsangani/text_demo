import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: calculator(),
  ));
}

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String ans = '0',num='',t='',sy='';
  void get(String a)
  {
    if(a=='C') {
      ans = '0';
      num='';
      sy='';
    }
    else if(a=='CE')
    {
      if(ans.length==1)
        ans='0';
      else {
        ans = ans.substring(0, ans.length - 1);
        ans=num+sy+ans;
      }
    }
    else if(a=='+'||a=='-'||a=='/'||a=='*'||a=='%') {
      if(sy!='')
      {
        if (sy == '+') num = (int.parse(num) + int.parse(ans)).toString();
        if (sy == '-') num = (int.parse(num) - int.parse(ans)).toString();
        if (sy == '*') num = (int.parse(num) * int.parse(ans)).toString();
        if (sy == '/') num = (int.parse(num) / int.parse(ans)).toString();
        if (sy == '%') num = (int.parse(num) / int.parse(ans) * 100).toString();
      }
        if(sy!='')
          ans=num+a;
        else {
          if (sy == '+') num = (int.parse(num) + int.parse(ans)).toString();
          if (sy == '-') num = (int.parse(num) - int.parse(ans)).toString();
          if (sy == '*') num = (int.parse(num) * int.parse(ans)).toString();
          if (sy == '/') num = (int.parse(num) / int.parse(ans)).toString();
          if (sy == '%') num = (int.parse(num) / int.parse(ans) * 100).toString();
          num = ans;
          ans = num+a;
        }
        sy = a;

    }
    else if(a=='=') {
      if (sy == '+') ans = (int.parse(num) + int.parse(ans)).toString();
      if (sy == '-') ans = (int.parse(num) - int.parse(ans)).toString();
      if (sy == '*') ans = (int.parse(num) * int.parse(ans)).toString();
      if (sy == '/') ans = (int.parse(num) / int.parse(ans)).toString();
      if (sy == '%') ans = (int.parse(num) / int.parse(ans) * 100).toString();
      sy='';
      num='';
    }
    else if(ans=='0')
    {
      ans=a;
    }
    else {
      ans += a;
    }
      setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      appBar: AppBar(
          title: Text(
        'Calculator',
        style: TextStyle(fontSize: 36),
      )),
      body: Column(
        children: [
          Expanded(child: Row(children:[Expanded(child: Container(margin: const EdgeInsets.all(20), alignment: Alignment.topRight, child: Text(ans,style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: InkWell(onTap: () => get('C'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(5)), child: Text('C', style: TextStyle(fontSize: 24),)),)),
                Expanded(child: InkWell(onTap: () => get('%'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(5)), child: Text('%', style: TextStyle(fontSize: 24),)),)),
                Expanded(child: InkWell(onTap: () => get('/'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(5)), child: Text('÷', style: TextStyle(fontSize: 30),)),)),
                Expanded(child: InkWell(onTap: () => get('CE'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(5)), child: Text('CE', style: TextStyle(fontSize: 24),)),)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: InkWell(onTap: () => get('7'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('7', style: TextStyle(fontSize: 24),)),)),
                Expanded(child: InkWell(onTap: () => get('8'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('8', style: TextStyle(fontSize: 24),)),)),
                Expanded(child: InkWell(onTap: () => get('9'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('9', style: TextStyle(fontSize: 24),)),)),
                Expanded(child: InkWell(onTap: () => get('x'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(5)), child: Text('*', style: TextStyle(fontSize: 24),)),)),
              ],
            ),
          ),
          Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: InkWell(onTap: () => get('4'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('4', style: TextStyle(fontSize: 24),)),)),
                Expanded(child: InkWell(onTap: () => get('5'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('5', style: TextStyle(fontSize: 24),)),)),
                Expanded(child: InkWell(onTap: () => get('6'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('6', style: TextStyle(fontSize: 24),)),)),
                Expanded(child: InkWell(onTap: () => get('-'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(5)), child: Text('-', style: TextStyle(fontSize: 24),)),)),
              ],
            ),
          ),
          Expanded(flex: 2, child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                Expanded(flex: 3,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Expanded(child: Row(children: [
                       Expanded(child: InkWell(onTap: () => get('1'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('1', style: TextStyle(fontSize: 24),)),)),
                       Expanded(child: InkWell(onTap: () => get('2'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('2', style: TextStyle(fontSize: 24),)),)),
                       Expanded(child: InkWell(onTap: () => get('3'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('3', style: TextStyle(fontSize: 24),)),)),
                     ],)),
                      Expanded(child: Row(children: [
                        Expanded(child: InkWell(onTap: () => get('00'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('00', style: TextStyle(fontSize: 24),)),)),
                        Expanded(child: InkWell(onTap: () => get('0'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)), child: Text('0', style: TextStyle(fontSize: 24),)),)),
                        Expanded(child: InkWell(onTap: () => get('='),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(5)), child: Text('=', style: TextStyle(fontSize: 24),)),)),
                      ],)),
                    ],
                  ),
                ),

              Expanded(child: InkWell(onTap: () => get('+'),child: Container(alignment: Alignment.center, margin: EdgeInsets.all(3), decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(5)), child: Text('+', style: TextStyle(fontSize: 24),)),)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
