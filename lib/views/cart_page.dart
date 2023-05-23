import 'package:another_test/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        title:   Text('cart',
        style: TextStyle(
          color: MyTheme.darkBlueishColor,
          fontWeight: FontWeight.w600
        ),),

      ),
    );
  }
}