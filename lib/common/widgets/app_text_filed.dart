import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_2/common/widgets/app_shadou.dart';
import 'package:shop_app_2/common/widgets/image_widget.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';

Widget appTextFile(
    {String text = '',
    String iconName = '',
    String hinText = "type your adress",
    bool obscureText = false}) {
  return Container(
    padding: const EdgeInsets.only(left: 20, right: 22),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        //Emaidyn razmerin karait /choiot
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 325,
          height: 50,
          decoration: appBoxDEcorationTextFiled(),
          //row contains icon and textfiled
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: appImage(imagePath: iconName),
              ),
              //our tex filed Davai rabotai
              Container(
                width: 270,
                height: 30,
                child: TextField(
                  onChanged:(value)=>func!(value),
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hinText,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                  // onChanged: (value) {},
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: obscureText,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
