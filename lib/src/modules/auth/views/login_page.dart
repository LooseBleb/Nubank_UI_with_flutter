// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_training/src/core/adapters/material/material.dart';
import 'package:flutter_training/src/core/constants/app_colors.dart';
import 'package:flutter_training/src/core/widgets/app_box.dart';
import 'package:flutter_training/src/core/widgets/app_container.dart';
import 'package:flutter_training/src/core/widgets/app_scaffold.dart';
import 'package:flutter_training/src/modules/home/views/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage([Key? key]) : super(key: key);

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ScrollController controller = ScrollController();

  bool positive = false;

  List<bool> _selections = List.generate(2, (_) => false);

  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return AppScaffold(
      backgroundColor: Colors.white,
      // ignore: prefer_const_constructors
      child: AppContainer(
        child: Container(
          padding: EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 90,
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    controller: controller,
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      // ignore: prefer_const_constructors
                      child: Text(
                        'Queremos deixar seu roxinho ainda mais protegido. Por isso, sempre vamos perdir uma senha para acessar o aplicativo',
                        style: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  AppBox(
                    height: 40,
                  ),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        // ignore: sort_child_properties_last
                        child: const Text(
                          "Usar senha do celular",
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.background,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              AppBox(
                height: 30,
              ),
              Center(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Essa senha é a mesma forma de validação",
                      style: TextStyle(color: Colors.black45, fontSize: 18),
                    ),
                    Text(
                      "que você usa para desbloquear seu",
                      style: TextStyle(color: Colors.black45, fontSize: 18),
                    ),
                    Text(
                      "celular.",
                      style: TextStyle(color: Colors.black45, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    color: ColorAdapter.hex('#eeeeee'),
                    height: 150,
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 30),
                            width: 250,
                            child: Text(
                              'Pular esta explicação da próxima vez que eu abrir o aplicativo do Nubank.',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          height: 30,
                          child: Container(
                            padding: EdgeInsets.only(left: 40),
                            width: double.infinity,
                            child: FlutterSwitch(
                              value: positive,
                              onToggle: (val) {
                                setState(() {
                                  positive = val;
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
