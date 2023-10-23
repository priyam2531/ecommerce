import 'package:ecommerce/Config/string_config.dart';
import 'package:ecommerce/Constant/font_size.dart';
import 'package:ecommerce/Constant/icon_page.dart';
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
  List name =['Fruits','Gopal','Jaljira','Kurkure','Laptop','Lays','Lenovo','Maggie'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
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
              ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    height: 130,
                    color: Colors.black12,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: name.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name[index],
                                  style: TextStyle(color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.white,
                    thickness: 1,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: name.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(children: [

                        ]),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
