import 'package:ecommerce/Config/string_config.dart';
import 'package:ecommerce/Constant/font_size.dart';
import 'package:ecommerce/Constant/icon_page.dart';
import 'package:ecommerce/Constant/margin_page.dart';
import 'package:ecommerce/Constant/my_color.dart';
import 'package:ecommerce/authontication/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController address = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(children: [
          Padding(
            padding:  EdgeInsets.all(AppMargin.marginSize30),
            child: Form(
              key: formkey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppIcon.backarrow,
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      StringConfig.account,
                      style: TextStyle(
                          color: AppMyColor.purple,
                          fontSize: AppFont.fontSize25),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: MaterialButton(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        minWidth: 350,
                        color: AppMyColor.purple,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           AppIcon.location,
                            Text(StringConfig.location,
                                style: TextStyle(
                                    color: AppMyColor.white,
                                    fontSize: AppFont.fontSize25)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      StringConfig.username,
                      style: TextStyle(
                          color: AppMyColor.purple,
                          fontSize: AppFont.fontSize20,
                          letterSpacing: 1),
                    ),
                    TextFormField(
                      controller: name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return StringConfig.entername;
                        }
                      },
                      decoration: InputDecoration(
                          label: Text(
                            StringConfig.username,
                            style: TextStyle(
                                color: AppMyColor.black,
                                fontSize: AppFont.fontSize15),
                          ),
                          hintText: StringConfig.customer,
                          suffixIcon: AppIcon.person),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      StringConfig.email,
                      style: TextStyle(
                          color: AppMyColor.purple,
                          fontSize: AppFont.fontSize20,
                          letterSpacing: 1),
                    ),
                    TextFormField(
                      controller: email,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return StringConfig.enteremail;
                        }
                      },
                      decoration: InputDecoration(
                          label: Text(
                            StringConfig.email,
                            style: TextStyle(
                                color: AppMyColor.black,
                                fontSize: AppFont.fontSize15),
                          ),
                          hintText: StringConfig.typeemail,
                          suffixIcon: AppIcon.email),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      StringConfig.contact,
                      style: TextStyle(
                          color: AppMyColor.purple,
                          fontSize: AppFont.fontSize20,
                          letterSpacing: 1),
                    ),
                    TextFormField(
                      controller: contact,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return StringConfig.entercontact;
                        }
                      },
                      decoration: InputDecoration(
                          label: Text(
                            StringConfig.contact,
                            style: TextStyle(
                                color: AppMyColor.black,
                                fontSize: AppFont.fontSize15),
                          ),
                          suffixIcon:AppIcon.phone),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      StringConfig.password,
                      style: TextStyle(
                          color: AppMyColor.purple,
                          fontSize: AppFont.fontSize20,
                          letterSpacing: 1),
                    ),
                    TextFormField(
                      controller: password,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return StringConfig.enterpass;
                        }
                      },
                      decoration: InputDecoration(
                          label: Text(
                            StringConfig.password,
                            style: TextStyle(
                                color: AppMyColor.black,
                                fontSize: AppFont.fontSize15),
                          ),
                          hintText: StringConfig.customer,
                          suffixIcon: AppIcon.eye),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      StringConfig.address,
                      style: TextStyle(
                          color: AppMyColor.purple,
                          fontSize: AppFont.fontSize20,
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 100,
                      child: TextFormField(
                        controller: address,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return StringConfig.enteraddress;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          label: Text(
                            StringConfig.address,
                            style: TextStyle(
                                color: AppMyColor.black,
                                fontSize: AppFont.fontSize15),
                          ),
                          hintText: StringConfig.address,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: MaterialButton(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        minWidth: 250,
                        color: AppMyColor.purple,
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const LoginPage();
                              },
                            ));
                          }
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          //   return LoginPage();
                          // },));
                        },
                        child: Text(StringConfig.register,
                            style: TextStyle(
                                color: AppMyColor.white,
                                fontSize: AppFont.fontSize25)),
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
