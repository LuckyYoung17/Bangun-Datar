import 'package:flutter/material.dart';
import 'package:testing/package/persegi_page.dart';


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
                  Expanded(child: CustomMenu(imageAsset: "asset/persegi.jpeg",title: "Persegi")),
                ],
              ),
              Row(
                children: [
                  CustomMenu(imageAsset: "asset/lingkarannew.png",title: "Lingkaran"),
                  CustomMenu(imageAsset: "asset/lingkarannew.png",title: "Lingkaran"),
                ],
              ),
              CustomMenu(imageAsset: "asset/persegipanjang.jpeg",title: "Persegi Panjang"),
              CustomMenu(imageAsset: "asset/segi3new.png",title: "Segitiga"),
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
        Image.asset(imageAsset, height: 100),
        Text(title, style: TextStyle(color: Colors.white),),
            ]
          )
      );
  }
}
