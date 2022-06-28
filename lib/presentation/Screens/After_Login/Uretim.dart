import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uretim extends StatefulWidget {
  static const String routname = '/uretim';
  @override
  _UretimState createState() => _UretimState();
}

class _UretimState extends State<Uretim> {
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
                  Text('Üretim', style: V28R)
                ],
              ),
              SizedBox(height: 45),
              AnimatedToggle(
                values: ['Tüm Branşlar', 'Branş Bazında Detay'],
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
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                      child: Column(
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
                      height: 76,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Row(
                          children: [
                            Icon(Icons.info_outline, color: Primary),
                            SizedBox(width: 15),
                            Flexible(
                              child: Text(
                                  'Günlük ve Aylık periyotta poliçe detaylarını görmek için branşlara dokunun.'),
                            )
                          ],
                        ),
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
                      height: 335,
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
                            FourText(
                                text1: 'Trafik',
                                text2: '23.480',
                                text3: '-2649',
                                text4: '%-16',
                                style: V16R),
                            SizedBox(height: 15),
                            FourText(
                                text1: 'Konut',
                                text2: '2.078',
                                text3: '-2649',
                                text4: '%73',
                                style: V16R),
                            SizedBox(height: 15),
                            FourText(
                                text1: 'Konut',
                                text2: '2.078',
                                text3: '-2649',
                                text4: '%73',
                                style: V16R),
                            SizedBox(height: 15),
                            FourText(
                                text1: 'Konut',
                                text2: '2.078',
                                text3: '-2649',
                                text4: '%73',
                                style: V16R),
                            SizedBox(height: 15),
                            FourText(
                                text1: 'Konut',
                                text2: '2.078',
                                text3: '-2649',
                                text4: '%73',
                                style: V16R),
                            SizedBox(height: 15),
                            FourText(
                                text1: 'Konut',
                                text2: '2.078',
                                text3: '-2649',
                                text4: '%73',
                                style: V16R),
                            SizedBox(height: 15),
                            FourText(
                                text1: 'Konut',
                                text2: '2.078',
                                text3: '-2649',
                                text4: '%73',
                                style: V16R),
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
