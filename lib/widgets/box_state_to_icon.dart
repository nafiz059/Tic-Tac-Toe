import 'package:flutter/material.dart';
import '../enum/box_state.dart';

class BoxStateToIcon extends StatelessWidget {
  final boxState;
  const BoxStateToIcon({super.key, required this.boxState});

  @override
  Widget build(BuildContext context) {
    if (boxState == box_state.cross) {
      return Icon(Icons.close, size: 140.0);
    } else if (boxState == box_state.circle) {
      return const Icon(Icons.lens_outlined, size: 120.0);
    } else {
      return Container();
    }
  }
}
