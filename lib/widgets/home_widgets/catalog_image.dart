import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';

class CatalogImage extends StatelessWidget {
  final String url;
  const CatalogImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return   Image.network(url).box.rounded.p8.color(MyTheme.creamColor).make().p16().w32(context)
;
  }
}