import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String stringHeader = '15th Anniversary & Parkour Competition';
const String stringBackgroundEvent =
    'Parkour Jakarta akan mengadakan kegiatan yang berbeda dengan memberikan kompetisi parkour sekaligus untuk merayakan hari jadi komunitas yang ke 15 tahun.';
const String stringKidsCompetition =
    'Challenge berupa, adu kecepatan dari garis Start sampai Finish dengan melalui titik yang ditentukan. Untuk challenge ini peserta dibatasi umur nya mulai dari 10-13 tahun.';
const String stringSkillCompetition =
    'Kompetisi untuk membuktikan seberapa banyak teknik parkour yang sudah dikuasai dengan melakukan tantangan yang sudah ditentukan.';
const String stringSpeedCompetition =
    'Melakukan gerakan parkour dari titik A ke titik B, secepat mungkin, tanpa melewati titik yang harus ditentukan.';

const Color youtubeColor = Color(0xffff0000);
const Color twitterColor = Color(0xff00ABEA);
const Color facebookColor = Color(0xff39579A);
const Color instagramColor = Color(0xffe1306c);

Uri youtubeUrl =
    Uri.parse('https://www.youtube.com/channel/UCLnkM_cBRGJm3KNRtMgO-8w');
Uri facebookUrl = Uri.parse('https://www.facebook.com/ParkourJakarta/');
Uri twitterUrl = Uri.parse('https://twitter.com/parkourjkt');
Uri instagramUrl = Uri.parse('https://www.instagram.com/parkourjkt/');
Uri formUrl = Uri.parse('https://forms.gle/LY5ZGxC8swEGhEqB7');

TextStyle HeaderStyle = TextStyle(
  fontFamily: 'Urban Black',
  color: Color(0xFFFFcb05),
  fontSize: 60,
);

TextStyle ContentStyle = TextStyle(
  fontFamily: 'Futura',
  color: Color(0xFF000000),
  fontSize: 20,
);

TextStyle TabContentStyle = TextStyle(
  fontFamily: 'Futura',
  color: Color(0xFF000000),
);

TextStyle SubContentStyle = TextStyle(
  fontFamily: 'Futura',
  color: Color(0xFF000000),
  fontSize: 20,
  fontStyle: FontStyle.italic,
);
