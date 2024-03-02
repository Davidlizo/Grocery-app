import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../components/containers/rounded_container.dart';

class MSingleAddress extends StatelessWidget {
  const MSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return MRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(16.0),
      backgroundColor: selectedAddress ? Colors.green.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : Colors.grey.shade300,
      margin: const EdgeInsets.only(bottom: 16.0,),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? Colors.black.withOpacity(0.6) : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Angela',
                maxLines: 1,
                overflow:  TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 4.0 / 2),
              const Text('(+234) 468 7089', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: 4.0 / 2),
              const Text('92235 Jimmy Clover, south lane, Maine, 45721, USA',softWrap: true),
            ],
          ),
        ],
      ),
    );
  }
}
