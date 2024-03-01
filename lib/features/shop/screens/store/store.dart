import 'package:ego_supermart/common/products/product_cards/product_cards_vertical.dart';
import 'package:ego_supermart/common/widgets/appbar/appbar.dart';
import 'package:ego_supermart/common/products/cart/cart_menu_icon.dart';
import 'package:flutter/material.dart';

import '../../../../components/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          MCartCounterIcon(onPressed: (){}, iconColor: Colors.black)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(9.0),
              child: Column(
                children: [
                  SizedBox(height: 16.0,),
                  MSearchContainer(text: 'Search in Store', showBackground: false,),
                ],
              ),
              ),
            //body
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16.0,
                    ),

                    // product Card
                    MGridLayout(itemCount: 10, itemBuilder: (_, index) => const MProductCardVertical(),),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

