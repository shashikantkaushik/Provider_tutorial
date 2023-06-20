import 'package:flutter/material.dart';

class StlCounter extends StatelessWidget {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            print(count);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
