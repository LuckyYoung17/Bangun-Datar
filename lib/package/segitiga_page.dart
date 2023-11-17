import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/segitiga_controller.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});

  final SegitigaController _segitigaController= Get.put(SegitigaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Segitiga Page"),),
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
                  Image.asset("asset/segi3new.png", height: 100),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Segitiga", style: TextStyle(color: Colors.black),),
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
            child: Text(" Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut. Kemudian untuk alas dari segitiga adalah satu dari sisi suatu bangun segitiga. Lalu untuk tingginya adalah garis yang berbentuk tegak lurus dengan sisi alas dan melewati titik sudut yang saling berhadapan dengan sisi alas."),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column (
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          onChanged: (value){
                            _segitigaController.alas = int.parse(value);
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Alas",
                              hintText: "Masukkan Alas",
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
                            _segitigaController.tinggi = int.parse(value);
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Tinggi",
                              hintText: "Masukkan Tinggi",
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
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          onChanged: (value){
                            _segitigaController.sisia = int.parse(value);
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Sisi A",
                              hintText: "Masukkan Sisi A",
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
                            _segitigaController.sisib = int.parse(value);
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Sisi B",
                              hintText: "Masukkan Sisi B",
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

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    onChanged: (value){
                      _segitigaController.sisic = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Sisi C",
                        hintText: "Masukkan Sisi C",
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
                        _segitigaController.hitungluas();
                      }, child: Text("Hitung Luas", style: TextStyle(color: Colors.redAccent),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                        _segitigaController.hitungkel();
                      }, child: Text("Hitung Keliling", style: TextStyle(color: Colors.blueAccent),)),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Obx(() => Text(_segitigaController.hasil.value, style: TextStyle(color: _segitigaController.warna1.value),))
        ],
      ),
    );
  }
}
