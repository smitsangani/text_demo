import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: cal(),
  ));
}

class cal extends StatefulWidget {
  const cal({super.key});

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      appBar: AppBar(title: const Text('Calculator')),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    alignment: Alignment.topRight,
                    child: const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  // width: 80,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child: const Text(
                        '%',
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ),
              Expanded(child: Container(height: 100, child: ElevatedButton(onPressed: () {}, style: const ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.white), foregroundColor: MaterialStatePropertyAll(Colors.black),), child:Text('CE', style: TextStyle(fontSize: 18),)),),),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'C',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '<--',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '%',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'CE',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'C',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '<--',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '%',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'CE',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'C',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '<--',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '%',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'CE',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'C',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '<--',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '%',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'CE',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'C',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '<--',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '%',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'CE',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      'C',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      '<--',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
