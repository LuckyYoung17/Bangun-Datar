import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int lebar = 0, panjang = 0;
  final hasil = " ".obs;
  final warna1 = Rx<Color>(Colors.black);

  void hitungluas(){
    int hitung = panjang*lebar;
    warna1.value = Colors.redAccent;
    hasil.value = "Hasil Perhitungan Luas dari $panjang x $lebar = $hitung";
  }

  void hitungkel(){
    int hitung = 2* (panjang+lebar);
    warna1.value = Colors.blueAccent;
    hasil.value = "Hasil Perhitungan Keliling dari $panjang x $lebar = $hitung";
  }
}