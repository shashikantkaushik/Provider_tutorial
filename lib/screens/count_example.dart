import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/count_provider.dart';
import 'dart:async';

class CountExample extends StatefulWidget{
  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  int count=0;
  
  @override
  // void initState() {
  //   final countProvider=Provider.of<CountProvider>(context,listen: false );
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //       countProvider.setCount();
  //   });
  //   super.initState();
  // }
@override
  Widget build(BuildContext context){
  final countProvider=Provider.of<CountProvider>(context,listen: false );
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("provider"),
      ),
      body: Center(
        child:

        Consumer<CountProvider>(
          builder: (context, countProvider, child) {

              return Text(
                countProvider.Count.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 66),
              );
            }

        ),

      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          onPressed: () {
            countProvider.setCount();
           //  count++;
            // setState(() {
            //
            // });
         //   print(count);
          },
          child: Icon(Icons.add),
        ),

      ),
    )
    ;
  }
}