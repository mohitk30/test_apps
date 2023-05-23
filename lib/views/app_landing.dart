import 'package:another_test/utilis/routes.dart';
import 'package:another_test/widgets/drawer.dart';
import 'package:another_test/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/catalog.dart';
import '../widgets/item_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';


class AppLanding extends StatefulWidget {
  const AppLanding({super.key});

  @override
  State<AppLanding> createState() => _AppLandingState();
}

class _AppLandingState extends State<AppLanding> {


   @override
  void initState() { 
    super.initState();
    loadItemData();
  }
  
  loadItemData() async {
    await Future.delayed(Duration(seconds: 2));
   final productList= await  rootBundle.loadString(
      "assets/files/catalog.json"
    );
    // print (productList);
    final decodedData= jsonDecode(productList);
    final productData=decodedData["products"];
    
    CatalogModel.items=List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() { });
         

  }
  @override
  Widget build(BuildContext context) {
    // return  Scaffold(
    //   appBar: AppBar(
    //     // backgroundColor: Colors.white,
    //     // elevation: 0.0,
    //     // iconTheme: IconThemeData(color: Colors.black),
    //     title: const Text('catalog app',
    //      style: TextStyle(color: Colors.black) ,
    //     ),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: (CatalogModel.items!=null && CatalogModel.items.isNotEmpty) 
    //     ? 
        
    //     // ListView.builder(
    //     //     itemCount: CatalogModel.items.length,
    //     //     itemBuilder: (context, index)   {
    //     //       return ItemWidget(item: CatalogModel.items[index],);
    //     //     },
    //     //   )


    //      GridView.builder(
    //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //                  crossAxisCount: 3,
    //                  mainAxisSpacing: 20,
    //                  crossAxisSpacing: 16
    //                  ), 
    //       itemBuilder: (context,index){
    //         final items=CatalogModel.items[index];
    //         return Card(
    //           clipBehavior: Clip.antiAlias,
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(10)
    //           ),
    //           child: GridTile(
    //             header: Container(
    //                  padding: const EdgeInsets.all(12),
    //                 decoration: const BoxDecoration(
    //                   color: Colors.deepPurple,
    //                 ),
    //                 child:   Text( 
    //                   items.name, 
    //                   style: const TextStyle(color: Colors.white),),
    //             ),
               

    //             footer: Container(
    //                  padding: const EdgeInsets.all(12),
    //                 decoration: const BoxDecoration(
    //                   color: Colors.black,
    //                 ),
    //                 child:   Text( 
    //                   "Rs ${items.price}", 
    //                   style: const TextStyle(color: Colors.white),),
    //             ),
    //              child: Image.network(items.imageLink),
    //            ),
    //         );
    //       },
    //       itemCount: CatalogModel.items.length,
    //       )
    
          
    //       : 
          
    //        const Center(
    //         child:    CircularProgressIndicator(),
    //       ),
    //   )  ,
    //   drawer: const CatalogDrawerWidget(),
      
    // );
  
    

    
    
    
     return Scaffold(
           backgroundColor: context.canvasColor,
           floatingActionButton: FloatingActionButton(
          onPressed: () { Navigator.pushNamed(context, MyRoutes.cartRoute); },
          backgroundColor: context.theme.buttonColor,
          child: const Icon(CupertinoIcons.cart,
           color: Colors.white,
          ),


        ),
           body:SafeArea(
             child: Container(
              padding: Vx.m32,
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children:   [
                            // "catalog app".text.xl4.bold.make(),
                            // "trending products for you".text.xl.make(),
                             const CatalogHeader().py16(),
                              if( CatalogModel.items != null &&  CatalogModel.items.isNotEmpty) 
                                const CatalogList().expand()
                              else 
                               const    CircularProgressIndicator().centered().py16().expand(),
                      
                 ],
                 ),
             ),
           )
     );
  
  
  }
}




