import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/screens/favourite.dart';

import '../provider/favourite_provider.dart';
import 'favourite_Item.dart';
class Favourite extends StatefulWidget{
  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Two'),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  FavouriteItem() ));
              },
              child: const Icon(Icons.favorite)),
          const SizedBox(width: 20,)

        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index){
                    return Card(
                      child: Consumer<FavouriteProvider>(builder: (context, value, child){
                        return ListTile(
                          onTap: (){
                            if(value.selectedItem.contains(index)){
                              value.removeItem(index);
                            }else {
                              value.addItem(index);
                            }
                          },
                          title: Text('item '+index.toString(),),
                          trailing: Icon( value.selectedItem.contains(index) ? Icons.favorite: Icons.favorite_border_outlined),
                        );
                      }),
                    );


                  }))
        ],
      ),
    );
  }
}