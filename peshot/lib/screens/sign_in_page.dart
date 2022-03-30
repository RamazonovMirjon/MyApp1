import 'package:flutter/material.dart';
import 'package:peshot/core/constants/color_const.dart';
import 'package:peshot/core/constants/font_const.dart';
import 'package:peshot/core/constants/p_m_const.dart';
import 'package:peshot/core/constants/radius_const.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool eye = false, tekshir = false, pri = false;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryConst,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: PMConst.kExtraLargePM,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: const Image(
                  image: AssetImage("assets/icons/Arrow_left_long.png")),
            ),
            const SizedBox(height: 30),
            Text(
              "Sign in",
              style: TextStyle(
                  fontSize: FontConst.kLargeFont,
                  fontFamily: "montserrat",
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                googleButton,
                facebookButton,
              ],
            ),
            Padding(
              padding: PMConst.kExtraLargePM * 2,
              child: Center(
                child: Text(
                  "Or log in using",
                  style: TextStyle(
                    color: ColorConst.kBlackConst,
                    fontSize: FontConst.kSmallFont,
                    fontFamily: "roboto",
                  ),
                ),
              ),
            ),
            pri
                ? Padding(
                    padding: PMConst.kLargePM,
                    child: Center(
                      child: Text(
                        "The mail or password you entered is wrong",
                        style: TextStyle(
                          color: ColorConst.kRedConst,
                          fontSize: FontConst.kSmallFont,
                          fontFamily: "roboto",
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(RadiusConst.kExtraLarge),
                ),
              ),
              child: TextFormField(
                controller: _controller1,
                textInputAction: TextInputAction.next,
                cursorColor: ColorConst.kBlackConst,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "            Mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(RadiusConst.kExtraLarge)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(RadiusConst.kExtraLarge),
                ),
              ),
              child: TextFormField(
                controller: _controller2,
                textInputAction: TextInputAction.next,
                obscureText: !eye,
                cursorColor: ColorConst.kBlackConst,
                keyboardType: TextInputType.text,
                validator: (text) {
                  if (text!.length < 5) {
                    setState(() {
                      tekshir = true;
                    });
                    print('object');
                  }
                  return "ali";
                },
                decoration: InputDecoration(
                  hintText: "            Password",
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        eye = !eye;
                      });
                    },
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: eye ? ColorConst.kBlueConst : null,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(RadiusConst.kExtraLarge)),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                    color: ColorConst.kBlackConst,
                    fontSize: FontConst.kSmallFont,
                    fontFamily: "roboto",
                  ),
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 30),
            loginButton,
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account yet? ',
                  style: TextStyle(
                    color: ColorConst.kBlackConst,
                    fontSize: FontConst.kSmallFont,
                    fontFamily: "roboto",
                  ),
                ),
                InkWell(
                    child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: ColorConst.kbuttonColor,
                  ),
                )),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  SizedBox get loginButton => SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ColorConst.kbuttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(RadiusConst.kExtraLarge),
              ),
            ),
          ),
          onPressed: () {
            if (_controller1.text.contains('@gmail.com') && _controller2.text.length > 5) {
              Navigator.pushNamed(context, "/intro");
            } else {
              setState(() {
                pri = true;
              });
            }
          },
          child: const Text("Log in"),
        ),
      );

  ElevatedButton get facebookButton => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorConst.kBlueConst,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(RadiusConst.kExtraLarge),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: PMConst.kExtraSmallPM,
              child: const Image(
                image: AssetImage("assets/icons/Vector.png"),
              ),
            ),
            Padding(
              padding: PMConst.kExtraSmallPM,
              child: Text(
                "Facebook",
                style: TextStyle(
                  color: ColorConst.kWhiteConst,
                  fontSize: FontConst.kMediumFont,
                  fontFamily: "montserrat",
                ),
              ),
            ),
          ],
        ),
      );

  ElevatedButton get googleButton => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorConst.kWhiteConst,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(RadiusConst.kExtraLarge),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: PMConst.kExtraSmallPM,
              child: const Image(
                image: AssetImage("assets/icons/google icon 1.png"),
              ),
            ),
            Padding(
              padding: PMConst.kExtraSmallPM,
              child: Text(
                "Google",
                style: TextStyle(
                  color: ColorConst.kBlackConst,
                  fontSize: FontConst.kMediumFont,
                  fontFamily: "montserrat",
                ),
              ),
            ),
          ],
        ),
      );
}
