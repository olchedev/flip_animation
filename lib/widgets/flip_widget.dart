import 'dart:math';

import 'package:flutter/material.dart';

class FlipWidget extends StatefulWidget {
  const FlipWidget({
    required this.size,
    required this.front,
    required this.back,
    super.key,
  });

  final Size size;
  final Widget front;
  final Widget back;

  @override
  State<FlipWidget> createState() => _FlipWidgetState();
}

class _FlipWidgetState extends State<FlipWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  AnimationStatus _status = AnimationStatus.dismissed;

  final degree0 = 0.0;
  final degree90 = pi / 2;
  final degree180 = pi;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animation = Tween(
      begin: degree0,
      end: degree180,
    ).animate(_controller)
      ..addStatusListener((status) {
        setState(() {
          _status = status;
        });
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_status == AnimationStatus.dismissed) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..rotateY(_animation.value),
            child: SizedBox(
              width: widget.size.width,
              height: widget.size.height,
              child: _animation.value <= degree90
                  ? widget.front
                  : Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()..rotateY(pi),
                      child: widget.back,
                    ),
            ),
          );
        },
      ),
    );
  }
}
