import 'dart:async';
import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({Key? key}) : super(key: key);

  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  Timer? countdownTimer;
  static DateTime finalDateTime =
      DateTime(2022, 8, 28); //TODO: Set tanggal sebenarnya
  static DateTime currentDateTime = DateTime.now();
  var dateDifference = finalDateTime.difference(currentDateTime);

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = dateDifference.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        dateDifference = Duration(seconds: seconds);
      }
    });
  }

  String? strDigits(int n) {
    n.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    final days = (dateDifference.inDays).toString();
    final hours = (dateDifference.inHours.remainder(24)).toString();
    final minutes = (dateDifference.inMinutes.remainder(60).toString());
    final seconds = (dateDifference.inSeconds.remainder(60).toString());
    return Column(
      children: [
        Center(
          child: Text(
            'Batas Pendaftaran',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Row(
          children: [
            Column(
              children: [
                Text(
                  days,
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'HARI',
                )
              ],
            ),
            Column(
              children: [
                Text(
                  ':',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  '',
                )
              ],
            ),
            Column(
              children: [
                Text(
                  hours,
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'JAM',
                )
              ],
            ),
            Column(
              children: [
                Text(
                  ':',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  '',
                )
              ],
            ),
            Column(
              children: [
                Text(
                  minutes,
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'MENIT',
                )
              ],
            ),
            Column(
              children: [
                Text(
                  ':',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  '',
                )
              ],
            ),
            Column(
              children: [
                Text(
                  seconds,
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'DETIK',
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
