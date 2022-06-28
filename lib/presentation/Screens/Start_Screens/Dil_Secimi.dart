import 'package:acente/presentation/Screens/Start_Screens/Splash_Screens.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class DilSecimi extends StatefulWidget {
  static const String routname = '/dil_secimi';

  @override
  _DilSecimiState createState() => _DilSecimiState();
}

class _DilSecimiState extends State<DilSecimi> {
  int? selectedLang;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 70),
            Row(
              children: [
                SizedBox(width: 25),
                Text('Merhaba,', style: V34L),
                Text('Dil Seçiniz', style: V34Sb),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
              child: TextInputWithIcon(label: 'Dil bulunuz', textColor: Color(0xFF000000), iconColor: Violet, icon: Icons.search),
            ),
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
                      child: SolidButton(text: 'DEVAM ET', onPress: (){Navigator.of(context).pushNamed(SplashScreens.routeName);}, shadow: Blue_High_Shadow,gradient: Blue_Gradient_2),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class SelectLanguage extends StatelessWidget {

  final String text;
  final String image;
  final void Function() onTap;
  final bool isSelected;

  SelectLanguage({required this.image, required this.text, required this.onTap, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('lib/presentation/Assets/Assets_Start_Screens/${image}.png',width: 40),
            SizedBox(width: 25),
            Text(text),
            Spacer(),
            if (isSelected)
            Image.asset('lib/presentation/Assets/Assets_Start_Screens/right_tick.png',width: 20),
            Divider(),
          ],
        ),
      ),
    );
  }
}
