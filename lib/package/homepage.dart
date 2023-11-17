import 'package:flutter/material.dart';
import 'package:testing/package/lingkaran_page.dart';
import 'package:testing/package/persegi_page.dart';
import 'package:testing/package/persegipanjang_page.dart';
import 'package:testing/package/segitiga_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page" , style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.red,
      ),
          body: ListView(
            children: [
              Row(
                children: [
                  Expanded(child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                    },
                      child: CustomMenu(imageAsset: "asset/persegi.jpeg",title: "Persegi"),)),
                  Expanded(child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjangPage()));
                    },
                      child: CustomMenu(imageAsset: "asset/persegipanjang.jpeg",title: "Persegi Panjang"),)),
                ],
              ),
              Row(
                children: [
                  Expanded(child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
                    },
                      child: CustomMenu(imageAsset: "asset/lingkarannew.png",title: "Lingkaran"))),
                  Expanded(child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
                    },
                      child: CustomMenu(imageAsset: "asset/segi3new.png",title: "Segitiga"))),
                ],
              ),
      ],
    ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });


  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        color: Colors.green.shade300,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
    children: [
        Image.asset(imageAsset, height: 200),
        Text(title, style: TextStyle(color: Colors.white),),
            ]
          )
      );
  }
}
