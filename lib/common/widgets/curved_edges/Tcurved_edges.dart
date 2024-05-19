import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/curved_edges/Tcustom_curve_edge.dart';

class TcurvedEdgeWidgets extends StatelessWidget {
  const TcurvedEdgeWidgets({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomeCurvedEdges(),
      child: child,
    );
  }
}
