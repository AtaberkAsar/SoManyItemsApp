import 'dart:math';

import 'package:flutter/material.dart';

const Color redColor = Color.fromRGBO(211, 47, 47, 1);
const Color whiteColor = Color.fromRGBO(242, 242, 242, 1);
const Color redAccent = Color.fromRGBO(154, 0, 8, 1);
const Color darkBlueColor = Color.fromRGBO(26, 33, 57, 1);
const Color lightBlueColor = Color.fromRGBO(26 * 2, 33 * 2, 57 * 2, 1);

Map<String, String> dictionary = {
  'axe': 'Balta',
  'backpack': 'Sırt Çantası',
  'basket': 'Sepet',
  'belt': 'Kemer',
  'binoculars': 'Dürbün',
  'book': 'Kitap',
  'bottlecap': 'Şişe Kapağı',
  'bowtie': 'Papyon',
  'bracelet': 'Bilezik',
  'broom': 'Süpürge',
  'bucket': 'Kova',
  'calculator': 'Hesap Makinesi',
  'calendar': 'Takvim',
  'camera': 'Kamera',
  'cell_phone': 'Cep Telefonu',
  'chair': 'Sandalye',
  'clock': 'Saat',
  'compass': 'Pusula',
  'computer': 'Bilgisayar',
  'cooler': 'Soğutucu',
  'cup': 'Kupa',
  'eraser': 'Silgi',
  'fan': 'Fan',
  'flashlight': 'Fener',
  'garden_hose': 'Bahçe Hortumu',
  'hammer': 'Çekiç',
  'headphones': 'Kulaklık',
  'helmet': 'Kask',
  'key': 'Anahtar',
  'keyboard': 'Klavye',
  'knife': 'Bıçak',
  'ladder': 'Merdiven',
  'laptop': 'Laptop',
  'ligth_bulb': 'Ampul',
  'ligther': 'Çakmak',
  'matches': 'Kibrit',
  'microphone': 'Mikrofon',
  'paint_can': 'Boya Kutusu',
  'paintbrush': 'Boya Fırçası',
  'paper_clip': 'Ataş',
  'pencil': 'Kalem',
  'rake': 'Tırmık',
  'remote_control': 'Uzaktan Kumanda',
  'scissors': 'Makas',
  'screwdriver': 'Tornavida',
  'shovel': 'Kürek',
  'telephone': 'Telefon',
  'toothbrush': 'Diş Fırçası',
  'toothpaste': 'Diş Macunu',
  'wine_bottle': 'Şarap Şişesi'
};

Widget starGradient(
    List<Color> starColors, Color backgroundColor, int starCount) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    color: backgroundColor,
    child: CustomPaint(
      painter: StarPainter(starColors: starColors, starCount: starCount),
    ),
  );
}

class StarPainter extends CustomPainter {
  List<Color> starColors;
  int starCount;
  Random rng = Random.secure();

  StarPainter({
    required this.starColors,
    required this.starCount,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double randX, randY, randR;
    Offset center;
    for (int i = 0; i < starCount; i++) {
      randX = rng.nextDouble() * size.width;
      randY = rng.nextDouble() * size.height;
      center = Offset(randX, randY);
      randR = rng.nextDouble() * 2 + 1;
      var fillBrush = Paint()
        ..color = starColors[rng.nextInt(starColors.length)];

      canvas.drawCircle(center, randR, fillBrush);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw false;
  }
}
