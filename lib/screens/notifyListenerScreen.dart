import 'package:flutter/material.dart';

class NotifiyListenerScreen extends StatelessWidget {
   NotifiyListenerScreen({super.key});
   ValueNotifier<int> _counter=ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Provider"),
        backgroundColor: Colors.red,
      ),
      body:Center(
        child: ValueListenableBuilder(
          valueListenable: _counter,
          builder: (context,value,child){
            return Text(_counter.value.toString(),style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900
            ),);
          }
        ),
      ),
          floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counter.value++;
    },
            child: Icon(Icons.add),
    ),
    );
  }
}
