import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0, tinggi = 0, sisimiring = 0 , sisia = 0 , sisib = 0, sisic = 0;
  final hasil = " ".obs;
  final warna1 = Rx<Color>(Colors.black);

  void hitungluas(){
    double hitung = 0.5 * alas * tinggi;
    warna1.value = Colors.redAccent;
    hasil.value = "Hasil Perhitungan Luas dari 1/2 x $alas x $tinggi = $hitung";
  }

  void hitungkel(){
    int hitung = sisia+sisib+sisic;
    warna1.value = Colors.blueAccent;
    hasil.value = "Hasil Perhitungan Keliling $sisia + $sisib + $sisic = $hitung";
  }
}