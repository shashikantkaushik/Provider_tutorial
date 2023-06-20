import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/opacity_provider.dart';

class OpacityExample extends StatefulWidget{
  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  Widget build(BuildContext context){
    print('widget build');
   // final opacityProvider=Provider.of<OpacityProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('Provider'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Consumer<OpacityProvider>(builder: (context, value, child){
            return Slider(
                max:1,
                min: 0,
                value: value.value , onChanged:(val){
                  value.setValue(val);
            });
          },),
          Consumer<OpacityProvider>(builder: (context, value, child){
            return Row(children: [
              Expanded(child: Container(
                child: Text(' box 1',style: TextStyle(
            fontSize: 44
            ),),
                color: Colors.green.withOpacity(value.value),
              )),
              Expanded(child: Container(
                child: Text(' box 2',
                style: TextStyle(
                  fontSize: 44
                ),),
                color: Colors.pink.withOpacity(value.value),
              ))
            ],);
          },)
      ],
    ),
    );
  }
}