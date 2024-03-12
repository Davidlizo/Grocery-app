import 'package:flutter/material.dart';

import 'package:ego_supermart/common/widgets/appbar/appbar.dart';
import 'package:ego_supermart/common/widgets/texts/product_price_text.dart';

import '../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
          showBackArrow: true,
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 15,
          separatorBuilder: (_, __) => const SizedBox(height: 32.0),
          itemBuilder: (_, index) => const Column(
            children: [
              MCartItem(),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //Extra Space
                      SizedBox(width: 70),
                      // Add Remove Buttons
                      MproductQuantityWithAddRemoveButton(),
                    ],
                  ),
                  MProductPriceText(price: '256')
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400),
            child: const Text('Checkout: \$456.0',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        //ElevatedButton(onPressed: (){}, child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
