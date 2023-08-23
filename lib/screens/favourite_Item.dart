import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/screens/favourite.dart';

import '../provider/favourite_provider.dart';
class FavouriteItem extends StatefulWidget{
  @override
  State<FavouriteItem> createState() => _FavouriteItemState();
}

class _FavouriteItemState extends State<FavouriteItem> {
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Two'),

      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: provider.selectedItem.length,
                  itemBuilder: (context, index){
                    return Card(
                      child: Consumer<FavouriteProvider>(builder: (context, value, child){
                        return ListTile(
                          onTap: (){

                          },
                          title: Text('item '+provider.selectedItem[index].toString(),),
                          trailing: const Icon(Icons.favorite),
                        );
                      }),
                    );

                  }))
        ],
      ),
    );
  }

}