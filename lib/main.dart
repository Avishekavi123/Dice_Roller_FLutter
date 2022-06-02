import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.grey,
        ),
        body: const Dicepage(),
      ),
    ),
  );
}


class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdic=1;
  int rightdic=1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(child: FlatButton(onPressed: ()
          {
            setState(() {
                    print('Left bvutton is clicked');
                    leftdic=Random().nextInt(6)+1;
            });
          },

            child: Image.asset('images/dice$leftdic.png'),),
          ),
          Expanded(child: FlatButton(onPressed: ()
          {
            setState(() {
                    print('Right bvutton is clicked');
                    rightdic=Random().nextInt(6)+1;
            });
          },

            child: Image.asset('images/dice$rightdic.png'),),
          ),
        ],
      ),
    );
  }
  }




