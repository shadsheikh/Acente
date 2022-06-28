import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ayarlar extends StatefulWidget {
  static const String routname = '/ayarlar';

  @override
  _AyarlarState createState() => _AyarlarState();
}

class _AyarlarState extends State<Ayarlar> {
bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: Grey_Gradient_Rev,
          ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Row(
                  children: [
                    IconTextButton(
                      text: 'GERI',
                      buttonColor: Colors.white,
                      onPress: () {
                        Navigator.of(context).pop();
                      },
                      shadow: Blue_Low_Shadow,
                      color: Violet,
                      icon: CupertinoIcons.arrow_left_circle,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                    ),
                    Spacer(),
                    BorderButton(
                      text: 'S.SOYLU',
                      color: Ternary,
                      onPress: () {},
                      shadow: Red_High_Shadow,
                      fontSize: 12,
                      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 8),
                    ),
                  ],
                ),
                SizedBox(height: 57),
                Text('Ayarlar',style: V40R),
                SizedBox(height: 30),
                Divider(),
                SizedBox(height: 15),
                Row(children: [
                  Switch(value: switchValue, onChanged: (currentValue){
                    setState(() {
                    switchValue = currentValue;
                  });}),
                  SizedBox(width: 20),
                  Flexible(child: Text('SMS ile indirim ve kampanyalardan haberdar olmak istiyorum.',style: V16L)),
                ],), 
                SizedBox(height: 15),
                Divider(),
                SizedBox(height: 15),
                Row(children: [
                  Switch(value: switchValue, onChanged: (currentValue){
                    setState(() {
                    switchValue = currentValue;
                  });}),
                  SizedBox(width: 20),
                  Flexible(child: Text('E-Posta ile indirim ve kampanyalardan haberdar olmak istiyorum',style: V16L)),
                ],), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}