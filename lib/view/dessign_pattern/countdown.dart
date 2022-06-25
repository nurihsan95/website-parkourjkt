import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website_parkourjkt/resource/resource.dart';

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
    _launchURL() async {
      if (await canLaunchUrl(formUrl)) {
        await launchUrl(formUrl);
      } else {
        throw 'Could not launch $formUrl';
      }
    }

    final days = (dateDifference.inDays).toString();
    final hours = (dateDifference.inHours.remainder(24)).toString();
    final minutes = (dateDifference.inMinutes.remainder(60).toString());
    final seconds = (dateDifference.inSeconds.remainder(60).toString());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.bottomCenter,
            child: AutoSizeText(
              'Batas Pendaftaran'.toUpperCase(),
              style: ContentStyle.copyWith(fontSize: 30),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        days,
                        style: ContentStyle.copyWith(fontSize: 20),
                        presetFontSizes: [60, 40],
                      ),
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      'HARI',
                      style: ContentStyle,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        ':',
                        style: ContentStyle.copyWith(fontSize: 20),
                        presetFontSizes: [60, 40],
                      ),
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      '',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        hours,
                        style: ContentStyle.copyWith(fontSize: 20),
                        presetFontSizes: [60, 40],
                      ),
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      'JAM',
                      style: ContentStyle,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        ':',
                        style: ContentStyle.copyWith(fontSize: 20),
                        presetFontSizes: [60, 40],
                      ),
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      '',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        minutes,
                        style: ContentStyle.copyWith(fontSize: 20),
                        presetFontSizes: [60, 40],
                      ),
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      'MENIT',
                      style: ContentStyle,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        ':',
                        style: ContentStyle.copyWith(fontSize: 20),
                        presetFontSizes: [60, 40],
                      ),
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      '',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        seconds,
                        style: ContentStyle.copyWith(fontSize: 20),
                        presetFontSizes: [60, 40],
                      ),
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      'DETIK',
                      style: ContentStyle,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Color(0xFF000000),
              primary: Color(0xFFFFcb05),
            ),
            onPressed: _launchURL,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: AutoSizeText(
                'Daftar Sekarang!'.toUpperCase(),
                style: ContentStyle.copyWith(fontSize: 30),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
