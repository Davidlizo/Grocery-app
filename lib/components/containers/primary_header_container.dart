import 'package:flutter/material.dart';

import '../../common/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'circular_outlined_container.dart';

class MPrimaryHeaderContainer extends StatelessWidget {
  const MPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MCurvedEdgeWidget(
      child: Container(
        color: Colors.green,
        child: Stack(
          children: [
            const Positioned(
                top: -200,
                left: -150,
                child: MCircularOutlinedContainer(
                  
                )),
            const Positioned(
                top: -120,
                left: -150,
                child: MCircularOutlinedContainer( 
                )),
            const Positioned(
                top: -170,
                left: -120,
                child: MCircularOutlinedContainer( 
                )),
            const Positioned(
                top: -100,
                left: -110,
                child: MCircularOutlinedContainer(
                )),
            child,
          ],
        ),
      ),
    );
  }
}
