

import 'package:another_test/utilis/routes.dart';
import 'package:another_test/views/home_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../theme.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
            shrinkWrap: true,
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index)   {
              final catalog= CatalogModel.items[index];
              return InkWell(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                       HomeDetailsPage(catalog: catalog)
                  ))
                },
                child: CatalogItem( catalog: catalog,),
                 
              );
            },
          );
  }
}

class CatalogItem extends StatelessWidget {

  final Item catalog;
  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return   VxBox(
       
      child: Row(children: [
        Hero(
          tag: Key(catalog.id ),
          child: CatalogImage(url: catalog.imageLink,)
          ),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.xl.bold.color(context.accentColor).make(),
            catalog.desc.text.textStyle(context.captionStyle).xl.make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mOnly(right: 18),
               
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: (){

                },
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                   shape:  MaterialStateProperty.all( const StadiumBorder())
                  ) ,
                 child:    "add to cart".text.make(),
               
                )
              ],
            )
          ],
        ))
      ],)
    ).color(context.cardColor).roundedSM.square(150).make().py4();
  }
}
