import 'dart:async';

import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class CountDownWidget extends StatefulWidget {
  const CountDownWidget({super.key});

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  Timer? _timer;
Duration _start = Duration(minutes: 2);
@override
  void initState() {
    startTimer();
    super.initState();
  }
void startTimer() {
  // const oneSec = const Duration(seconds: 1);
  // _timer = new Timer.periodic(
  //   oneSec,
  //   (Timer timer) {
  //     if (_start == 0) {
  //       setState(() {
  //         timer.cancel();
  //       });
  //     } else {
  //       setState(() {
  //         _start--;
  //       });
  //     }
  //   },
  // );
}

@override
void dispose() {
  _timer!.cancel();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
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
          child: TimerCountdown(
            minutesDescription: "",
          format: CountDownTimerFormat.minutesOnly,
          endTime: DateTime.now().add(
            Duration(
             
             
              minutes: 2,
              seconds: 0
            
            ),
          ),
          onEnd: () {
            print("Timer finished");
          },
        ),
          
          //  Text(
          //   "$_start",
          //   style: TextStyle(
          //     fontSize: AppSizes.geth(context, 0.018),
          //   ),
          // ),

        ),
        MyPadding(
          width: AppSizes.geth(context, 0.008),
        ),
        Text(
          "dan keyin kodni amal qilish muddati tugaydi",
          style: TextStyle(
            fontSize: AppSizes.geth(context, 0.014),
          ),
        ),
      ],
    );
  }
}
