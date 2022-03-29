import 'package:flutter/material.dart';
import 'package:peshot/core/constants/font_const.dart';
import 'package:peshot/core/constants/radius_const.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, "/signin"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/img.png"), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                          Radius.circular(RadiusConst.kMedium))),
                  child: const Image(
                    image: AssetImage("assets/images/building 1.png"),
                  ),
                ),
                Text(
                  "Peshot",
                  style: TextStyle(
                    fontSize: FontConst.kExtraLargeFont,
                    fontFamily: "montserrat",
                  ),
                ),
                Text(
                  "Welcome to peshot \n Book easy and cheap hotels only on Peshot",
                  style: TextStyle(
                    fontFamily: "roboto",
                    fontSize: FontConst.kSmallFont,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
