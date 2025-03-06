import 'package:flutter/material.dart';

class MasterCardLogoWidget extends StatelessWidget {
  const MasterCardLogoWidget({
    this.size = 30.0,
    super.key,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
        ),
        Container(
          width: size,
          height: size,
          margin: EdgeInsets.only(left: size / 1.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
