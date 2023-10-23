
import 'package:ecommerce/Config/string_config.dart';
import 'package:ecommerce/Constant/font_size.dart';
import 'package:ecommerce/Constant/icon_page.dart';
import 'package:ecommerce/Constant/margin_page.dart';
import 'package:ecommerce/Constant/my_color.dart';
import 'package:ecommerce/homepage/iteam_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String tab="Crips";
  int selected = 0;
  List image = [
    'assest/jalpano.png',
    'assest/crinkles.jpg',
    'assest/sweet.jpg'
  ];
  List name = [
    'Britannia',
    'Chings',
    'Cofresh',
    'demo brand',
    'demo packet',
    'all category'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(

          bottomNavigationBar: BottomNavigationBar(
            items:  [
              BottomNavigationBarItem(
                  icon: AppIcon.home,
                  label: ""),
              BottomNavigationBarItem(
                  icon:AppIcon.search,
                  label: ""),
              BottomNavigationBarItem(
                  icon: AppIcon.shop,
                  label: ""),
              BottomNavigationBarItem(
                  icon: AppIcon.like,
                  label: ""),
              BottomNavigationBarItem(
                  icon: AppIcon.person,
                  label: ""),
            ],
            currentIndex: 0,
          ),
          body: Column(
            children: [
              Container(
                  height: 60,
                  color: AppMyColor.deeppurple,
                  child: Center(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: name.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:  EdgeInsets.all(AppMargin.marginSize8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(name[index],
                                  style:  TextStyle(
                                      color: AppMyColor.white,
                                      fontSize: AppFont.fontSize15,
                                      fontWeight: FontWeight.bold)),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selected = index;
                                  });
                                },
                                child: Padding(
                                  padding:  EdgeInsets.all(AppMargin.marginSize8),
                                  child: Container(
                                    height: 3,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // border: Border.all(
                                        //     color: selected == index
                                        //         ? Colors.transparent
                                        //         : Colors.amber,
                                        //     width: 2),
                                        color: selected == index
                                            ? Colors.amber
                                            : Colors.transparent),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )),
              Container(
                height: 50,
                color: AppMyColor.litepurple,
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                 StringConfig.crips,StringConfig.savoury
                ].map((e) => Padding(
                  padding:  EdgeInsets.all(AppMargin.marginSize8),
                  child: InkWell(onTap: () {
                    setState(() {
                      tab=e;

                    });
                  },
                    child: Container(color: tab==e? Colors.amber: null,child: Padding(
                      padding:  EdgeInsets.all(AppMargin.marginSize8),
                      child: Text(e.toString()),
                    )),
                  ),
                )).toList()),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding:  EdgeInsets.all(AppMargin.marginSize15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              image:
                                  DecorationImage(image: AssetImage('assest/jalpano.png'))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                         Text(
                          StringConfig.jalpano,
                          style: TextStyle(fontSize: AppFont.fontSize10, color: AppMyColor.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                         Text(
                         StringConfig.price ,
                          style: TextStyle(
                              fontSize: AppFont.fontSize15,
                              color: AppMyColor.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: AppMyColor.deeppurple,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return IteamPage();
                            },));
                          },
                          child:  Text(StringConfig.add,
                              style: TextStyle(color: AppMyColor.white, fontSize: AppFont.fontSize15)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              image:

                              DecorationImage(image: AssetImage('assest/crinkles.jpg'))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                         Text(
                          StringConfig.chilli,
                          style: TextStyle(fontSize: AppFont.fontSize10, color: AppMyColor.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                         Text(
                          StringConfig.price,
                          style: TextStyle(
                              fontSize: AppFont.fontSize15,
                              color: AppMyColor.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: AppMyColor.deeppurple,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child:  Text(StringConfig.add,
                              style: TextStyle(color: AppMyColor.white, fontSize: AppFont.fontSize15)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              image:
                              DecorationImage(image: AssetImage('assest/sweet.jpg'))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                         Text(
                          StringConfig.sweet,
                          style: TextStyle(fontSize: AppFont.fontSize10, color: AppMyColor.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                         Text(
                          StringConfig.price,
                          style: TextStyle(
                              fontSize: AppFont.fontSize15,
                              color: AppMyColor.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: AppMyColor.deeppurple,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child:  Text(StringConfig.add,
                              style: TextStyle(color: AppMyColor.white, fontSize: AppFont.fontSize15)),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
