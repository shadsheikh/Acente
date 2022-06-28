import 'package:acente/presentation/Screens/Login_and_Register/Giris_Yap.dart';
import 'package:acente/presentation/Screens/Login_and_Register/Uye_Ol.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SikcaSorulanSorular extends StatefulWidget {
  static const String routname = '/sikca_sorulan_sorular';

  @override
  _SikcaSorulanSorularState createState() => _SikcaSorulanSorularState();
}

class _SikcaSorulanSorularState extends State<SikcaSorulanSorular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: Grey_Gradient_Rev,
          ),
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Row(
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
              SizedBox(height: 50),
              Text('Sıkça Sorulan Sorular', style: V40R),
              SizedBox(height: 20),
              Neumorphic(
                style: NeumorphicStyle(
                    intensity: 0.70,
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
                    depth: -10,
                    lightSource: LightSource.top,
                    color: Colors.grey),
                child: Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text('Arama Yap'),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: DefaultTabController(
                  length: 5,
                  child: Column(
                    children: [
                      TabBar(
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BubbleTabIndicator(
                            indicatorHeight: 25.0,
                            indicatorColor: Ternary,
                            tabBarIndicatorSize: TabBarIndicatorSize.tab,
                            // Other flags
                            // indicatorRadius: 1,
                            // insets: EdgeInsets.all(1),
                            // padding: EdgeInsets.all(10)
                          ),
                          // labelStyle: B16Sb,
                          // unselectedLabelStyle: B16Sb,
                          // unselectedLabelColor: Blue.withOpacity(0.5),
                          // labelColor: Blue,
                          tabs: [
                            Tab(
                              child: Text(
                                'Genel',
                                style: V16L,
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Ödeme',
                                style: V16L,
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Hizmetler',
                                style: V16L,
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Kasko',
                                style: V16L,
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Bire',
                                style: V16L,
                              ),
                            ),
                          ]),
                      Expanded(
                        child: TabBarView(
                          children: List.generate(
                            5,
                            (index) => SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 164,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: Blue_High_Shadow,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 25),
                                          Row(
                                            children: [
                                              Text(
                                                'Lorem İpsum Sit Dolor Met',
                                                style: V16Sb,
                                              ),
                                              Spacer(),
                                              Icon(Icons.keyboard_arrow_down),
                                            ],
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                              'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi. Nisi ullamco id ex amet anim sunt sint. Voluptate est enim esse ex sit nisi id cillum nulla est.',
                                              style: V16L),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 88,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: Blue_High_Shadow,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 25),
                                        Flexible(
                                            child: Text(
                                          'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi.',
                                          style: V16Sb,
                                        )),
                                        Icon(Icons.keyboard_arrow_down),
                                        SizedBox(width: 20),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 88,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: Blue_High_Shadow,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 25),
                                        Flexible(
                                            child: Text(
                                          'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi.',
                                          style: V16Sb,
                                        )),
                                        Icon(Icons.keyboard_arrow_down),
                                        SizedBox(width: 20),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  BorderButton(
                                      text: 'Daha Fazla Yükle',
                                      color: Blue,
                                      onPress: () {},
                                      shadow: Blue_Low_Shadow),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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
