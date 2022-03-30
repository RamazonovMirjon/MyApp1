import 'package:flutter/material.dart';
import 'package:peshot/core/constants/color_const.dart';
import 'package:peshot/core/constants/font_const.dart';
import 'package:peshot/core/constants/p_m_const.dart';
import 'package:peshot/core/constants/radius_const.dart';
import 'package:peshot/widgets/buttons.dart';
import 'package:peshot/widgets/textformfil_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool eye = false, wrong = false;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorConst.kPrimaryConst,

        //Klaviatura chiqsa xatolik bermasligi uchun
        resizeToAvoidBottomInset: false,

        //umumiy padding
        body: Padding(
          padding: PMConst.kExtraLargePM,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //bu back iconi uchun
              InkWell(
                onTap: () {},
                child: const Image(
                    image: AssetImage("assets/icons/Arrow_left_long.png")),
              ),

              //bo'sh joy uchun
              const SizedBox(height: 30),

              //Sigin texti uchun
              Text(
                "Sign in",
                style: TextStyle(
                    fontSize: FontConst.kLargeFont,
                    fontFamily: "montserrat",
                    fontWeight: FontWeight.bold),
              ),

              //bo'sh joy
              const SizedBox(height: 20),

              //google va facebook buttoni uchun
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  googleButton,
                  facebookButton,
                ],
              ),

              //bo'sh joy va kerakli text uchun
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

              // bu xato berganda chiqadigan qizil text uchun
              wrong
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

              //email va password kiritadigan joylar uchun
              TextFormFildWidget(controller1: _controller1, text: 'Mail'),
              const SizedBox(height: 20),
              _passwordMethod,

              //bu passwordni unuttingizmi degan joy uchun. Align chap tarafga kuchirish uchun ishlatilgan
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

              //bo'sh joy uchun
              const SizedBox(height: 30),

              //logn button
              _loginButton,

              //qolgan bo'sh joylarni egallaydi aqilli code
              const Spacer(),

              //pastki yozuvlar uchun
              _buttonTextMethod,
              const SizedBox(height: 20),
            ],
          ),
        ),
      );

  Card get _passwordMethod => Card(
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
              borderRadius:
                  BorderRadius.all(Radius.circular(RadiusConst.kExtraLarge)),
            ),
          ),
        ),
      );

  SizedBox get _loginButton => SizedBox(
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
            if (_controller1.text.contains('@gmail.com') &&
                _controller2.text.length > 5) {
              Navigator.pushNamed(context, "/intro");
            } else {
              setState(() {
                wrong = true;
              });
            }
          },
          child: const Text("Log in"),
        ),
      );

  Row get _buttonTextMethod => Row(
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
              ),
              onTap: () {
                Navigator.pushNamed(context, "/signup");
              }),
        ],
      );
}
