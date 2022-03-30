import 'package:flutter/material.dart';
import 'package:peshot/core/constants/color_const.dart';
import 'package:peshot/core/constants/font_const.dart';
import 'package:peshot/core/constants/p_m_const.dart';
import 'package:peshot/core/constants/radius_const.dart';

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
