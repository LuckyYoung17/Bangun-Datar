import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = " ".obs;
  final warna1 = Rx<Color>(Colors.black);

  void hitungluas(){
    int hitung = sisi*sisi;
    warna1.value = Colors.redAccent;
    hasil.value = "Hasil Perhitungan Luas dari $sisi x $sisi = $hitung";
  }

  void hitungkel(){
    int hitung = sisi*4;
    warna1.value = Colors.blueAccent;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi = $hitung";
  }
}