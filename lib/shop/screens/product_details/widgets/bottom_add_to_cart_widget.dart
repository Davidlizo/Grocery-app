import 'package:ego_supermart/common/widgets/icons/m_circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MBottomAddToCart extends StatelessWidget {
  const MBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0 / 2),
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
                MCircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                color: Colors.black,
                backgroundColor: Colors.grey.shade300,
              ),
              const SizedBox(width: 16.0),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: 16.0),
              const MCircularIcon(
                icon: Iconsax.add,
                backgroundColor: Colors.green,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12.0),
                backgroundColor: Colors.green,
                side: const BorderSide(color: Colors.green),
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
