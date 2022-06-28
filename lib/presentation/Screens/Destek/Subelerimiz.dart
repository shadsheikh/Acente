import 'package:acente/presentation/Screens/Login_and_Register/Giris_Yap.dart';
import 'package:acente/presentation/Screens/Login_and_Register/Uye_Ol.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Subelerimiz extends StatefulWidget {
  static const String routname = '/subelerimiz';

  @override
  _SubelerimizState createState() => _SubelerimizState();
}

class _SubelerimizState extends State<Subelerimiz> {
  int _toggleValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: Grey_Gradient_Rev,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 45, top: 17, right: 25, left: 25),
                child: Row(
                  children: [
                    IconTextButton(
                      text: 'GERI',
                      buttonColor: Colors.white,
                      onPress: () {
                        Navigator.pop(context);
                      },
                      shadow: Blue_Low_Shadow,
                      color: Violet,
                      icon: CupertinoIcons.arrow_left_circle,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                    ),
                    Spacer(),
                    BorderButton(
                        text: 'Giriş yap',
                        color: Ternary,
                        onPress: () {
                          Navigator.of(context).pushNamed(GirisYap.routname);
                        },
                        shadow: Red_High_Shadow,
                        fontSize: 12,
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 8)),
                    SizedBox(width: 15),
                    SolidButton(
                        text: 'ÜYE OL',
                        onPress: () {
                          Navigator.of(context).pushNamed(UyeOI.routname);
                        },
                        shadow: Red_High_Shadow,
                        gradient: Red_Gradient,
                        fontSize: 12,
                        padding:
                            EdgeInsets.symmetric(vertical: 9, horizontal: 10)),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 25),
                        child: Text('Şubelerimiz', style: V40R),
                      ),
                      Image.asset('lib/presentation/Assets/Assets_Destek/map.png'),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25, right: 37, top: 25, bottom: 35),
                        child: Row(
                          children: [
                            Text('Bana En Yakın Şubeleri Göster', style: V16Sb),
                            Spacer(),
                            CircleIconButton(
                                buttonColor: Colors.white,
                                onPress: () {},
                                shadow: Red_Low_Shadow,
                                icon: Icons.my_location,
                                iconColor: Violet)
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25),
                          RotatedBox(
                            quarterTurns: 1,
                            child: RichText(
                              text: TextSpan(
                                text: 'Hello World ',
                                style: V16L,
                                children: [
                                  WidgetSpan(
                                    child: Icon(Icons.arrow_forward),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 23),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  AnimatedToggle(
                                    values: ['Yurtiçi', 'Yurtdışı'],
                                    onToggleCallback: (value) {
                                      setState(() {
                                        _toggleValue = value;
                                      });
                                    },
                                    buttonColor: Violet,
                                    backgroundColor: Unseleted,
                                    textColor: Colors.white,
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                    height: 59,
                                  ),
                                  SizedBox(height: 25),
                                  Neumorphic(
                                    style: NeumorphicStyle(
                                        intensity: 0.70,
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(25)),
                                        depth: -10,
                                        lightSource: LightSource.top,
                                        color: Colors.grey),
                                    child: Container(
                                      height: 60,
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Text('Tüm İller'),
                                          Spacer(),
                                          Icon(Icons.keyboard_arrow_down),
                                          SizedBox(width: 20),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 25, right: 25),
                        child: Text(
                          'a',
                          style: V60Sb,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            BranchItem(),
                            BranchItem(),
                            BranchItem(),
                            BranchItem(),
                            BranchItem(),
                            BranchItem(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 25, right: 25),
                        child: Text(
                          'b',
                          style: V60Sb,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            BranchItem(),
                            BranchItem(),
                            BranchItem(),
                            BranchItem(),
                            BranchItem(),
                            BranchItem(),
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
