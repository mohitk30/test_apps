import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

 
class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                            "catalog app".text.xl4.bold.color(context.theme.accentColor).make(),
                            "trending products for you".text.xl.color(context.theme.accentColor).make(),
                      
                 ],
              );
  }
}