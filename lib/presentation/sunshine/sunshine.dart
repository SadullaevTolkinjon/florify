import 'dart:math';

import 'package:flutter/material.dart';

class SunshineAnimation extends StatefulWidget {
  const SunshineAnimation({super.key});

  @override
  _SunshineAnimationState createState() => _SunshineAnimationState();
}

class _SunshineAnimationState extends State<SunshineAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  double _rotation = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _controller!.addListener(() {
      setState(() {
        _rotation = _controller!.value * 360;
      });
    });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sunshine Animation'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller!,
          builder: (context, child) {
            return Transform.rotate(
              angle: _rotation * (3.14159265359 / 180.0), // Convert degrees to radians
              child: CustomPaint(
                size: const Size(200, 200),
                painter: SunshinePainter(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SunshinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    final sunCenter = Offset(size.width / 2, size.height / 2);
    final sunRadius = size.width / 4;

    canvas.drawCircle(sunCenter, sunRadius, paint);

    final rayPaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    for (var i = 0; i < 12; i++) {
      final angle = (i * 30) * (3.14159265359 / 180.0); // Convert degrees to radians
      final rayStart = Offset(
        sunCenter.dx + sunRadius * 0.8 * cos(angle),
        sunCenter.dy + sunRadius * 0.8 * sin(angle),
      );
      final rayEnd = Offset(
        sunCenter.dx + sunRadius * 1.2 * cos(angle),
        sunCenter.dy + sunRadius * 1.2 * sin(angle),
      );
      canvas.drawLine(rayStart, rayEnd, rayPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
