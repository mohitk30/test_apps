import 'package:another_test/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

 
 class HomeDetailsPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailsPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mOnly(right: 18),
                 
                children: [
                  "\$${catalog.price}".text.bold.xl4.red400.make(),
                  ElevatedButton(
                    onPressed: (){
      
                  },
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                     shape:  MaterialStateProperty.all( const StadiumBorder())
                    ) ,
                   child:    "add to cart".text.xl.make(),
                 
                  ).wh(150,40)
                ],
              ).p32(),
      ),
      body:  SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id ),
              child: Image.network(catalog.imageLink).h32(context)
              ),
            Expanded(

              child: VxArc(
                height: 20.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child:  Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                       children: [
                          catalog.name.text.xl4.bold.color(context.accentColor).make(),
                          catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                          20.heightBox,
                           const Text(
                            'Desc goes here, Desc goes here, Desc goes here, Desc goes here, ............. ',
                             softWrap: true,
                           ),
                          
                       ],
                    ).py32(),
                  ),
                
              ))
          ],
        ).p16(),
      ),
    );
  }
}