import 'package:ecommerce/Config/string_config.dart';
import 'package:ecommerce/Constant/font_size.dart';
import 'package:ecommerce/Constant/icon_page.dart';
import 'package:ecommerce/Constant/my_color.dart';
import 'package:ecommerce/authontication/register_page.dart';
import 'package:ecommerce/homepage/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  List image = ["loginvactor.png"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Image.asset(
                    'assest/loginvactor.png',
                    scale: 2,
                  )),
                  Text(
                    StringConfig.login,
                    style: TextStyle(
                        color: AppMyColor.purple,
                        fontSize: AppFont.fontSize40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    StringConfig.account,
                    style: TextStyle(
                        color: AppMyColor.purple, fontSize: AppFont.fontSize15),
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
                    controller: login,
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
                        suffixIcon: AppIcon.email),
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
                        return StringConfig.password;
                      }
                    },
                    decoration: InputDecoration(
                        label: Text(
                          StringConfig.password,
                          style: TextStyle(
                              color: AppMyColor.black,
                              fontSize: AppFont.fontSize15),
                        ),
                        suffixIcon: AppIcon.eye,),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringConfig.changePass,
                        style: TextStyle(
                            letterSpacing: 1,
                            color: AppMyColor.black,
                            fontSize: AppFont.fontSize16),
                      ),
                      Text(
                        StringConfig.forgetPass,
                        style: TextStyle(
                            letterSpacing: 1,
                            color: AppMyColor.black,
                            fontSize: AppFont.fontSize16),
                      )
                    ],
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
                              return const HomePage();
                            },
                          ));
                        }
                      },
                      child: Text(StringConfig.login,
                          style: TextStyle(
                              color: AppMyColor.white,
                              fontSize: AppFont.fontSize25)),
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
                              return const RegisterPage();
                            },
                          ));
                        }
                      },
                      child: Text(StringConfig.register,
                          style: TextStyle(
                              color: AppMyColor.white,
                              fontSize: AppFont.fontSize25)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
