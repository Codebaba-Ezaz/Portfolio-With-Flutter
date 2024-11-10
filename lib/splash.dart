import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer? timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer(const Duration(seconds: 2), () {
      Get.to(() => const Home());
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = Get.size;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: 21,
                  right: 21,
                  child: SizedBox(
                    width: size.width * .065,
                    height: size.width * .065,
                    child: const CircularProgressIndicator(
                      color: CupertinoColors.black,
                    ),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/portfolio_icon.png",
                    width: size.width * .35,
                    height: size.width * .35,
                  ),
                  Text(
                    "PortFolio",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: size.width * .055),
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