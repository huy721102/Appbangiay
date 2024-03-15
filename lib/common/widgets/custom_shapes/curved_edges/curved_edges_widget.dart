import 'package:appbangiay/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class HCurvedEdgeWidget extends StatelessWidget {
  const HCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HCustomCurvedEdges(),
      child: child,
    );
  }
}
