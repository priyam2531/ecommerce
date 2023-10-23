import 'package:ecommerce/Config/string_config.dart';
import 'package:ecommerce/Constant/font_size.dart';
import 'package:ecommerce/Constant/icon_page.dart';
import 'package:ecommerce/Constant/margin_page.dart';
import 'package:ecommerce/Constant/my_color.dart';
import 'package:ecommerce/homepage/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int selected = 0;
  List image = [
    'assest/fruits.jpeg',
    'assest/gopal.jpeg',
    'assest/jaljeera.jpeg',
    'assest/kurkure.jpg',
    'assest/laptop.jpg',
    'assest/lays.png',
    'assest/laptop.jpg',
    'assest/maggi.png'
  ];
  List name = [
    'Fruits',
    'Gopal',
    'Jaljira',
    'Kurkure',
    'Laptop',
    'Lays',
    'Lenovo',
    'Maggie'
  ];


  List data = [
    {
      'img':"assest/fruits.jpeg",
      'txt':"Fruits",
      'color':AppMyColor.liteorange,
      'colors':AppMyColor.orange
    },
    {
      'img':"assest/gopal.jpeg",
      'txt':"Gopal",
    'color': AppMyColor.litesky,
      'colors':AppMyColor.sky2
    },
    {
      'img':"assest/jaljeera.jpeg",
      'txt':"Jaljira",
      'color':AppMyColor.litebatli,
      'colors':AppMyColor.batli

    },  {
      'img':"assest/Kurkure.jpg",
      'txt':"Kurkure",
      'color':AppMyColor.litepink,
      'colors':AppMyColor.pink

    },  {
      'img':"assest/laptop.jpg",
      'txt':"Laptop",
      'color':AppMyColor.litebatli,
      'colors':AppMyColor.batli

    },
    {
      'img':"assest/lays.png",
      'txt':"Lays",
      'color':AppMyColor.liteorange,
      'colors':AppMyColor.orange

    },
    {
      'img':"assest/laptop.jpg",
      'txt':"Lenovo",
      'color':AppMyColor.litepink,
      'colors':AppMyColor.pink

    },
    {
      'img':"assest/maggi.png",
      'txt':"Maggie",
      'color':AppMyColor.litesky,
      'colors':AppMyColor.sky2

    },

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
              height: 70,
              color: AppMyColor.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ));
                      },
                      child: AppIcon.backarrow),
                  Text(
                    StringConfig.find,
                    style: TextStyle(
                        color: AppMyColor.purple,
                        fontSize: AppFont.fontSize25,
                        fontWeight: FontWeight.bold),
                  ),
                  AppIcon.search1,
                ],
              )),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: data.length,
              itemBuilder: (context, i) {
                return
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: data[i]['color'],
                        border: Border.all(color: data[i]['colors'],width: 4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 140,
                                width: 140,
                                child:
                                Center(child: Image(image: AssetImage(data[i]['img'])))),
                            Text(data[i]['txt'].toString())

                          ],
                        ),
                      ),
                    ),
                  );
              }
            ),
          ),
        ]),
      ),
    ));
  }
}
