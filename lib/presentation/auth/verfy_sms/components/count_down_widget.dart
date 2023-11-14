import 'dart:async';

import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class CountDownWidget extends StatefulWidget {
  const CountDownWidget({super.key});

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  late Timer _timer;
  Duration _remainingTime = const Duration(minutes: 2);
  bool isResent = false;
  @override
  void initState() {
    super.initState();
    _remainingTime = const Duration(seconds: 2);
    _startTimer();
  }

  reset() {
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(minutes: 2),
      (timer) {
        setState(() {
          if (_remainingTime.inSeconds > 0) {
            _remainingTime = _remainingTime - const Duration(seconds: 1);
          } else {
            isResent = true;
            _timer.cancel();
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _remainingTime.inMinutes;
    int seconds = _remainingTime.inSeconds % 60;
    return Row(
      children: [
        Container(
          width: AppSizes.geth(context, 0.08),
          height: AppSizes.geth(context, 0.05),
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstants.black.withOpacity(0.5),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          alignment: Alignment.center,
          child: isResent
              ? GestureDetector(
                  child: const Icon(Icons.restore),
                  onTap: () {},
                )
              : Text(
                  '$minutes:${seconds.toString().padLeft(2, '0')}', // Format minutes and seconds
                  style: TextStyle(fontSize: AppSizes.geth(context, 0.018)),
                ),
        ),
        MyPadding(
          width: AppSizes.geth(context, 0.008),
        ),
        Text(
          isResent
              ? "Qayta jo'natish"
              : "dan keyin kodni amal qilish muddati tugaydi",
          style: TextStyle(
            fontSize: AppSizes.geth(context, 0.014),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
