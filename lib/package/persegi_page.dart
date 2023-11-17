import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/controller/persegi_controller.dart';

class PersegiPage extends StatelessWidget {
   PersegiPage({super.key});
  final PersegiController _persegiController= Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Persegi Page"),),
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
                Image.asset("asset/persegi.jpeg", height: 100),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Persegi", style: TextStyle(color: Colors.black),),
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
            child: Text("Persegi adalah persegi panjang yang panjang keempat sisinya sama."),
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
                      _persegiController.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Sisi",
                        hintText: "Masukkan Sisi",
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
                        _persegiController.hitungluas();
                      }, child: Text("Hitung Luas", style: TextStyle(color: Colors.redAccent),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                        _persegiController.hitungkel();
                      }, child: Text("Hitung Keliling", style: TextStyle(color: Colors.blueAccent),)),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Obx(() => Text(_persegiController.hasil.value, style: TextStyle(color: _persegiController.warna1.value),))
        ],
      ),
    );
  }
}