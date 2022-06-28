import 'package:acente/presentation/Screens/Start_Screens/Dil_Secimi.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DilSec extends StatefulWidget {
static const String routname = '/dil_sec';
  @override
  _DilSecState createState() => _DilSecState();
}

class _DilSecState extends State<DilSec> {
  int? selectedLang;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
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
              ),
              SizedBox(height: 57),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text('Dil Seçimi',style: V40R),
              ),
              SizedBox(height: 50),
               Expanded(
              child: Container(
                color: Azure,
                child: Column(
                  children: [
                    SelectLanguage(image: 'turkey_flag',text: 'Türkçe',onTap: (){
                      setState(() {
                        selectedLang = 0;
                      });
                    },isSelected: selectedLang == 0),
                    SelectLanguage(image: 'russia_flag',text: 'Rusça',onTap: (){
                      setState(() {
                        selectedLang = 1;
                      });
                    },isSelected: selectedLang == 1),
                    SelectLanguage(image: 'iran_flag',text: 'Farsi' ,onTap: (){
                      setState(() {
                        selectedLang = 2;
                      });
                    },isSelected: selectedLang == 2),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: SolidButton(text: 'Değiştir', onPress: (){}, shadow: Blue_High_Shadow,gradient: Blue_Gradient_2),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}