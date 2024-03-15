import 'package:appbangiay/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:appbangiay/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HPrimaryHeaderContainer extends StatelessWidget {
  const HPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return HCurvedEdgeWidget(
           child: Container(
            color: HColors.primary,
          //
         child: Stack(
        children: [
          //background custom shapes
         Positioned(top:-150,right: -250,child: HCircularContainer(backgroundColor: HColors.white.withOpacity(0.1))),
        Positioned(top:100,right: -300,child: HCircularContainer(backgroundColor: HColors.white.withOpacity(0.1))), 
        child,    
          ],
              ),
            ),
    );
  }
}