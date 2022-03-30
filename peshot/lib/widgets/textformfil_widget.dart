import 'package:flutter/material.dart';
import 'package:peshot/core/constants/color_const.dart';
import 'package:peshot/core/constants/radius_const.dart';

class TextFormFildWidget extends StatelessWidget {
  const TextFormFildWidget({
    Key? key,
    required String text,
    required TextEditingController controller1,
  })  : _controller1 = controller1, _text = text,
        super(key: key);

  final TextEditingController _controller1;
  final String _text;
  

  @override
  Widget build(BuildContext context) {
    return Card(
      
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
          hintText: "            $_text",
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(RadiusConst.kExtraLarge)),
          ),
        ),
      ),
    );
  }
}
