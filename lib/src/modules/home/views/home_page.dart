// ignore_for_file: empty_constructor_bodies, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_training/src/core/constants/app_colors.dart';
import 'package:flutter_training/src/core/widgets/app_box.dart';
import 'package:flutter_training/src/core/widgets/app_image.dart';
import 'package:flutter_training/src/core/widgets/app_scaffold.dart';
import 'package:flutter_training/src/modules/home/views/card_details_page.dart';

import '../../auth/views/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage([Key? key]) : super(key: key);

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColors.background,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  width: 200,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/images/nubank.png',
                      width: 90,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.container,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AppBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CardPage()))
              },
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.container,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2)),
                  ],
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      width: 200,
                      height: 150,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Yago Felipe',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 150,
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            'assets/images/mastercard.png',
                          )),
                    ),
                  ],
                ),
              ),
            ),
            AppBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.container,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 2)),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: 300,
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          width: 200,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Saldo disponível",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'assets/images/Wallet.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    width: double.infinity,
                    child: Text(
                      'RS145,76',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ],
              ),
            ),
            AppBox(height: 30),
            SizedBox(
              width: 270,
              child: Text(
                'Do que precisa?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
            AppBox(height: 30),
            Container(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 130,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.container,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 50,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Image.asset(
                                'assets/images/pix.png',
                              ),
                            ),
                          ),
                          Container(
                            width: 70,
                            height: 65,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Fazer um Pix',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 130,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.container,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 50,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Image.asset(
                                'assets/images/deposito.png',
                              ),
                            ),
                          ),
                          Container(
                            width: 70,
                            height: 65,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Fazer um depósito',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 130,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.container,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 50,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Image.asset(
                                'assets/images/boleto.png',
                              ),
                            ),
                          ),
                          Container(
                            width: 75,
                            height: 65,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Pagar um boleto',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 130,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.container,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 50,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Image.asset(
                                'assets/images/Wallet.png',
                              ),
                            ),
                          ),
                          Container(
                            width: 75,
                            height: 65,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Fazer um cartão',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
