import 'package:acente/presentation/Screens/After_Login/Saglik.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Yenilemelerim extends StatefulWidget {
  static const String routname = '/yenilemelerim';
  @override
  _YenilemelerimState createState() => _YenilemelerimState();
}

class _YenilemelerimState extends State<Yenilemelerim> {
  int _toggleValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: SafeArea(
          child: Column(
            children: [
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
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  ),
                  Spacer(),
                  Text('Yenilemelerim', style: V28R)
                ],
              ),
              SizedBox(height: 45),
              AnimatedToggle(
                values: ['Tüm Branşlar', 'Brans Bazında Detay'],
                onToggleCallback: (value) {
                  setState(() {
                    _toggleValue = value;
                  });
                },
                buttonColor: Violet,
                backgroundColor: Unseleted,
                textColor: Colors.white,
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTabController(
                    length: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: Blue_Low_Shadow,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          SizedBox(
                              height: 130,
                              width: 192,
                              child: Image(
                                image: AssetImage(
                                    'lib/presentation/Assets/Assets_After_Login/background_path.png'),
                              )),
                          Column(
                            children: [
                              TabBar(
                                labelStyle: B16Sb,
                                unselectedLabelStyle: B16Sb,
                                unselectedLabelColor: Blue.withOpacity(0.5),
                                labelColor: Blue,
                                tabs: [
                                  Tab(text: 'Günluk'),
                                  Tab(text: 'Aylık'),
                                  Tab(text: 'Bu Çey…'),
                                  Tab(text: 'Sağlık'),
                                  Tab(text: 'Günluk'),
                                ],
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    InfoTabContent(),
                                    InfoTabContent(),
                                    InfoTabContent(),
                                    InfoTabContent(),
                                    InfoTabContent(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTabController(
                    length: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: Blue_Low_Shadow,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 175,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            FourText(
                                text1: 'Brans',
                                text2: 'Bu Yıl',
                                text3: 'Geçen Yıl',
                                text4: 'Degisim',
                                style: V16Sb),
                            Divider(),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(Saglik.routname);
                              },
                              child: FourText(
                                  text1: 'Trafik',
                                  text2: '23.480',
                                  text3: '-2649',
                                  text4: '%-16',
                                  style: V16R),
                            ),
                            SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(Saglik.routname);
                              },
                              child: FourText(
                                  text1: 'Konut',
                                  text2: '2.078',
                                  text3: '-2649',
                                  text4: '%73',
                                  style: V16R),
                            ),
                            Divider(),
                            FourText(
                                text1: 'Toplam',
                                text2: '250.184',
                                text3: '-2649',
                                text4: '%-60',
                                style: V16Sb),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
