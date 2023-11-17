import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int r = 0;
  final hasil = " ".obs;
  final warna1 = Rx<Color>(Colors.black);

  void hitungluas(){
    double hitung = 3.14*r*r;
    warna1.value = Colors.redAccent;
    hasil.value = "Hasil Perhitungan Luas dari Lingkaram dengan jari-jari $r = $hitung";
  }

  void hitungkel(){
    double hitung = 2 * 3.14 * r;
    warna1.value = Colors.blueAccent;
    hasil.value = "Hasil Perhitungan Keliling Lingkaran dengan jari-jari $r = $hitung";
  }
}