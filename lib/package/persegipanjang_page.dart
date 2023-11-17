import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/persegipanjang_controller.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});

  final PersegiPanjangController _persegiPanjangController= Get.put(PersegiPanjangController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Persegi Panjang Page"),),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("asset/persegipanjang.jpeg", height: 100),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Persegi Panjang", style: TextStyle(color: Colors.black),),
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300, borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi Panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          onChanged: (value){
                            _persegiPanjangController.panjang = int.parse(value);
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Panjang",
                              hintText: "Masukkan Panjang",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.green),
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          onChanged: (value){
                            _persegiPanjangController.lebar = int.parse(value);
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Lebar",
                              hintText: "Masukkan Lebar",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.green),
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                        ),
                      ),
                    ),
                  ],
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                        _persegiPanjangController.hitungluas();
                      }, child: Text("Hitung Luas", style: TextStyle(color: Colors.redAccent),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                        _persegiPanjangController.hitungkel();
                      }, child: Text("Hitung Keliling", style: TextStyle(color: Colors.blueAccent),)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Obx(() => Text(_persegiPanjangController.hasil.value, style: TextStyle(color: _persegiPanjangController.warna1.value),))
        ],
      ),
    );
  }
}
