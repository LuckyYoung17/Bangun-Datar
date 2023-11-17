import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/lingkaran_controller.dart';

class LingkaranPage extends StatelessWidget {
   LingkaranPage({super.key});

  final LingkaranController _lingkaranController= Get.put(LingkaranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:const Text("Lingkaran Page"),),
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
                  Image.asset("asset/lingkarannew.png", height: 100),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Lingkaran", style: TextStyle(color: Colors.black),),
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
    child: Text("Lingkaran adalah bangun datar dua dimensi yang terbentuk dari sekumpulan titik dengan jarak yang konstan atau teratur dari titik tetap pada sebuah bidang. Titik tetap pada sebuah bangun datar lingkaran ini disebut juga dengan titik asal atau titik pusat lingkaran."),
    ),
    Container(
      padding: const EdgeInsets.all(8.0),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column (
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              onChanged: (value){
                _lingkaranController.r = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Jari-Jari",
                  hintText: "Masukkan Jari-Jari",
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
          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  _lingkaranController.hitungluas();
                }, child: Text("Hitung Luas", style: TextStyle(color: Colors.redAccent),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  _lingkaranController.hitungkel();
                }, child: Text("Hitung Keliling", style: TextStyle(color: Colors.blueAccent),)),
              ),
            ],
          ),
        ],
      ),
    ),

    Obx(() => Text(_lingkaranController.hasil.value, style: TextStyle(color: _lingkaranController.warna1.value),))
    ],
    ),
    );
  }
}
