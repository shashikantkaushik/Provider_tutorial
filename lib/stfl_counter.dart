import 'package:flutter/material.dart';
class stflCounter extends StatefulWidget{
  @override
  State<stflCounter> createState() => _stflCounterState();
}

class _stflCounterState extends State<stflCounter> {
  @override
  int count=0;

  Widget build(BuildContext context){
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("provider"),
      ),
      body: Center(
        child:
     Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Center(
            child: Text(
              count.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 66),
            ),
          ),
        ],
     ),
      ),
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              count++;
              setState(() {

              });
              print(count);
            },
            child: Icon(Icons.add),
          ),

      ),
    );
  }
}