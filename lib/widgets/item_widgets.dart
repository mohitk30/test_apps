import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {

   final Item item;

  const ItemWidget({super.key, required this.item}); 
 


  @override
  Widget build(BuildContext context) {
     
    return   Card(
      child: ListTile(
        onTap: (){
          // print("${item.price} pressed");
        },
        leading: Image.network(item.imageLink),
        title:  Text(item.name,
          style: const TextStyle( 
            fontWeight: FontWeight.bold
            ),
        ),
        subtitle: Text(item.desc),
        trailing:   Text("Rs ${item.price}",
        textScaleFactor: 1.6,
        style: const TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}