import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/features/shop/screens/order/widgets/orders_list.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //appbar
      appBar: HAppBar(title: Text('my order',style: Theme.of(context).textTheme.headlineSmall),showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(HSizes.defaultSpace),

        //order
        child: HOrderListItems(),
        ),
    );
  }
}