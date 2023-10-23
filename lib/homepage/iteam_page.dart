import 'package:ecommerce/Config/string_config.dart';
import 'package:ecommerce/Constant/font_size.dart';
import 'package:ecommerce/Constant/icon_page.dart';
import 'package:ecommerce/Constant/margin_page.dart';
import 'package:ecommerce/Constant/my_color.dart';
import 'package:flutter/material.dart';

class IteamPage extends StatefulWidget {
  const IteamPage({Key? key}) : super(key: key);

  @override
  State<IteamPage> createState() => _IteamPageState();
}

class _IteamPageState extends State<IteamPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(AppMargin.marginSize15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: AppIcon.backarrow),
                  Padding(
                    padding: EdgeInsets.only(left: AppMargin.marginSize60),
                    child: Text(
                      StringConfig.jalpano,
                      style: TextStyle(
                          color: AppMyColor.purple,
                          fontSize: AppFont.fontSize20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
                Padding(
                  padding: EdgeInsets.all(AppMargin.marginSize10),
                  child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          color: AppMyColor.sky,
                          image: DecorationImage(
                              image: AssetImage("assest/jalpano.png")),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)))),
                ),
                Text(StringConfig.jalpano,
                    style: TextStyle(
                        color: AppMyColor.purple,
                        fontSize: AppFont.fontSize20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text(StringConfig.jalpano,
                    style: TextStyle(
                        color: AppMyColor.purple,
                        fontSize: AppFont.fontSize10)),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          color: AppMyColor.white,
                          border: Border.all(color: AppMyColor.purple),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        StringConfig.quantity,
                        style: TextStyle(
                            color: AppMyColor.purple,
                            fontSize: AppFont.fontSize12,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Text(
                      StringConfig.price,
                      style: TextStyle(
                          color: AppMyColor.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: AppFont.fontSize12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  height: 2,
                  color: AppMyColor.grey,
                  thickness: 3,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  StringConfig.unit,
                  style: TextStyle(
                      fontSize: AppFont.fontSize12, color: AppMyColor.purple),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  height: 2,
                  color: AppMyColor.grey,
                  thickness: 3,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringConfig.unitgm,
                      style: TextStyle(
                          fontSize: AppFont.fontSize12,
                          color: AppMyColor.purple),
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      color: AppMyColor.darkgrey,
                      child: Center(
                          child: Text(
                        StringConfig.gm,
                        style: TextStyle(color: AppMyColor.purple),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  height: 2,
                  color: AppMyColor.grey,
                  thickness: 3,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  StringConfig.product,
                  style: TextStyle(
                      fontSize: AppFont.fontSize12, color: AppMyColor.purple),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  height: 2,
                  color: AppMyColor.grey,
                  thickness: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
