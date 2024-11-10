import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});


@override

  Widget build(BuildContext context) {
  RxBool shachievement =false.obs;
  var size = Get.size;
  var apphgt =AppBar().preferredSize.height;

  return Obx(()=> Scaffold(
    appBar: AppBar(
      backgroundColor: CupertinoColors.systemIndigo,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/portfolio_icon.png",
            width: size.width * .075,
            height: size.width * .075,
          ),
          const Text(
            "PortFolio",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.white60,
            ),
          )
        ],
      ),
    ),
    body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 45.0, bottom: 11),
                    child: Container(
                      width: size.width * .41,
                      height: size.width * .41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: CupertinoColors.systemIndigo.withOpacity(.25),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(7.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1000),
                          child: Image.asset(
                              "assets/images/Ezaz.jpg",
                            fit: BoxFit.cover,
                        ),
                      ),
                    )
                  )
                  ),
                  Text(
                    "Ezaz Ahmed Sayem",
                    style: TextStyle(
                      color: CupertinoColors.systemCyan,
                      fontSize: size.width * .055,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "Student",
                    style: TextStyle(
                      color: CupertinoColors.systemPurple,
                      fontSize: size.width * .039,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: CupertinoColors.systemIndigo.withOpacity(.25),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(11.0),
                      child: Text.rich(TextSpan(children: [
                        const WidgetSpan(
                            child: Icon(CupertinoIcons.mail_solid),
                          alignment: PlaceholderAlignment.middle,
                        ),
                        TextSpan(
                          text: "ezazahmed2002@gmail.com",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: size.width * .039,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                      ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: CupertinoColors.systemBackground.withOpacity(.26),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(11.0),
                      child: Text.rich(TextSpan(children: [
                        const WidgetSpan(
                            child: Icon(CupertinoIcons.phone),
                          alignment: PlaceholderAlignment.middle
                        ),
                        TextSpan(
                          text: "+880 16143-98321",
                          style: TextStyle(
                            color: CupertinoColors.activeBlue,
                            fontWeight: FontWeight.w900,
                            fontSize: size.width * .039,
                          )
                        )
                      ])),
                    ) ,
                  ),

                ],
              ),
              Positioned(
                  bottom: 21,
              left: 21,
              right: 21,
              child: Container(
                width: size.width,
                height: apphgt *.85,
                decoration: BoxDecoration(
                  color: CupertinoColors.systemIndigo,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: const Center(
                  child: Text(
                    "Skills",
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              ),
              Positioned(
                  bottom: 28+apphgt * .85,
                left: 21,
                right: 21,
                child: GestureDetector(
                  onTap: (){
                    shachievement.value= !shachievement.value;
                  },
                  child: AnimatedContainer(
                      duration: const Duration(milliseconds: 540),
                    curve: Curves.linearToEaseOut,
                    width: size.width,
                    height: shachievement.value ? 300: apphgt * .85,
                    decoration: BoxDecoration(
                      color: shachievement.value ? Colors.tealAccent:CupertinoColors.systemIndigo,
                      borderRadius: BorderRadius.circular(1000)
                    ),
                    child: Center(
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 545),
                        curve: Curves.linearToEaseOut,
                        opacity: shachievement.value ? 0:1,
                        child: const Text(
                          "Achievements",
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        )
    ),
  ),
  );

}
}
