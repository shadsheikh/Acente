import 'package:acente/presentation/Screens/After_Login/Uretim.dart';
import 'package:acente/presentation/Screens/After_Login/Yenilemelerim.dart';
import 'package:acente/presentation/Screens/After_Login/Saglik.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class AnasayfaLoggedIn extends StatefulWidget {
  static const String routname = '/anasayfa_logged_In';

  @override
  _AnasayfaLoggedInState createState() => _AnasayfaLoggedInState();
}

class _AnasayfaLoggedInState extends State<AnasayfaLoggedIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Image.asset('lib/presentation/Assets/Assets_After_Login/logo.png',
                    width: 160),
                Spacer(),
                CircleIconButton(
                    buttonColor: Colors.white,
                    onPress: () {
                      // _scaffoldKey.currentState?.openEndDrawer();
                      Scaffold.of(context).openEndDrawer();
                    },
                    shadow: Red_Low_Shadow,
                    icon: Icons.menu,
                    iconColor: Dark_Purple)
              ],
            ),
          ),
          SizedBox(height: 50),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InfoTabBar(
                      color: Blue,
                      shadow: Blue_High_Shadow,
                      label: 'Üretim',
                      onTap: () {
                        Navigator.of(context).pushNamed(Uretim.routname);
                      }),
                  SizedBox(height: 33),
                  Divider(),
                  SizedBox(height: 33),
                  InfoTabBar(
                      color: Ternary,
                      shadow: Red_High_Shadow,
                      label: 'Yenilemelerim',
                      onTap: () {
                        Navigator.of(context).pushNamed(Yenilemelerim.routname);
                      }),
                  SizedBox(height: 33),
                  Divider(),
                  SizedBox(height: 33),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Yenilemelerim.routname);
                          },
                          child: Text('Yenilemelerim', style: V22R),
                        ),
                        SizedBox(height: 10),
                        DefaultTabController(
                          length: 2,
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
                                      unselectedLabelColor:
                                          Blue.withOpacity(0.5),
                                      labelColor: Blue,
                                      tabs: [
                                        Tab(text: 'Kasko'),
                                        Tab(text: 'Sağlık'),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
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
                  ),
                  SizedBox(height: 33),
                  Divider(),
                  SizedBox(height: 33),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hasar', style: V22R),
                        SizedBox(height: 10),
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
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                SizedBox(
                                  height: 130,
                                  width: 192,
                                  child: Image(
                                    image: AssetImage(
                                        'lib/presentation/Assets/Assets_After_Login/background_path.png'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 25,
                                    right: 37,
                                  ),
                                  child: Row(
                                    children: [
                                      CustumProgressIndicator(
                                          shadow: Blue_High_Shadow,
                                          color: Unprogressed,
                                          value: 0),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            DualTextColumn(
                                                text1: 'Ödenen Hasar',
                                                text2: '0 TL',
                                                style1: V14L,
                                                style2: V16R),
                                            SizedBox(height: 8),
                                            DualTextColumn(
                                                text1: 'Muallak Hasar',
                                                text2: '0 TL',
                                                style1: V14L,
                                                style2: V16R),
                                            SizedBox(height: 8),
                                            DualTextColumn(
                                                text1: 'Açılan Hasar Dosyası',
                                                text2: '0 TL',
                                                style1: V14L,
                                                style2: V16R),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 33),
                  Divider(),
                  SizedBox(height: 33),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sıralama', style: V22R),
                        SizedBox(height: 10),
                        DefaultTabController(
                          length: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: Blue_Low_Shadow,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 98,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: Image(
                                    image: AssetImage(
                                        'lib/presentation/Assets/Assets_After_Login/background_path1.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 9, left: 50, right: 50),
                                  child: Row(
                                    children: [
                                      TextAndBox(heading: 'Şirket', value: '1'),
                                      Spacer(),
                                      TextAndBox(heading: 'Bölge', value: '1'),
                                      Spacer(),
                                      TextAndBox(heading: 'İl', value: '1'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
