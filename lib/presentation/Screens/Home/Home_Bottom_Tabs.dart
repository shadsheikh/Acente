import 'package:acente/presentation/Screens/Destek/Destek.dart';
import 'package:acente/presentation/Screens/Home/Anasayfa.dart';
import 'package:acente/presentation/Screens/Home/Hesabi.dart';
import 'package:acente/presentation/Screens/Home/Policele.dart';
import 'package:acente/presentation/Screens/Teklif_Al/Teklif_Al.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class HomeBottomTabs extends StatefulWidget {
  static const String routname = '/home_bottom_tabs';

  @override
  State<StatefulWidget> createState() {
    return _BottomTab();
  }
}

class _BottomTab extends State<HomeBottomTabs> {
  int _selectedTabIndex = 0;
  List _pages = [
    Anasayfa(),
    Policele(),
    TeklifAI(),
    Hesabi(),
    Destek(),
  ];
  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
      print("index..." + index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
            color: Dark_Purple,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView(
                  physics: ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    Row(
                      children: [
                        Text('MENU', style: V50L),
                        Spacer(),
                        RoundedRectangeButton(icon: Icons.close),
                      ],
                    ),
                    SizedBox(height: 31),
                    IconTextButton(
                      text: 'Dashboard',
                      buttonColor: Blue,
                      onPress: () {},
                      shadow: Blue_High_Shadow,
                      color: Colors.white,
                      image: AssetImage('lib/presentation/Assets/Assets_Home/house.png'),
                    ),
                    SizedBox(height: 15),
                    ListTile(
                      leading: Image.asset(
                          'lib/presentation/Assets/Assets_Home/umbrella.png',
                          width: 24),
                      title: const Text('Poliçelerim', style: W16R),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                          'lib/presentation/Assets/Assets_Home/umbrella.png',
                          width: 24),
                      title: const Text('Teklif Al', style: W16R),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                          'lib/presentation/Assets/Assets_Home/umbrella.png',
                          width: 24),
                      trailing: Icon(Icons.keyboard_arrow_down_sharp,
                          color: Colors.white),
                      title: const Text('Üretim', style: W16R),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                          'lib/presentation/Assets/Assets_Home/umbrella.png',
                          width: 24),
                      trailing: Icon(Icons.keyboard_arrow_down_sharp,
                          color: Colors.white),
                      title: const Text('Satislar', style: W16R),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                          'lib/presentation/Assets/Assets_Home/umbrella.png',
                          width: 24),
                      trailing: Icon(Icons.keyboard_arrow_down_sharp,
                          color: Colors.white),
                      title: const Text('Hasarlar', style: W16R),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                          'lib/presentation/Assets/Assets_Home/umbrella.png',
                          width: 24),
                      title: const Text('Bildirimler', style: W16R),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                          'lib/presentation/Assets/Assets_Home/umbrella.png',
                          width: 24),
                      title: const Text('Hesabim', style: W16R),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                          'lib/presentation/Assets/Assets_Home/umbrella.png',
                          width: 24),
                      title: const Text('Ayarlar', style: W16R),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                          'lib/presentation/Assets/Assets_Home/umbrella.png',
                          width: 24),
                      title: const Text('Acente365 Support', style: W16R),
                      onTap: () {},
                    ),
                    SizedBox(height: 55),
                    Row(
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            color: Melachite,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Howdy,', style: W12L),
                            SizedBox(height: 5),
                            Text('Sinan Soylu', style: W16R),
                            SizedBox(height: 8),
                            Text('Log Out', style: R14L),
                          ],
                        ),
                        SizedBox(width: 23),
                        Container(
                          width: 32,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(7),
                          child: Icon(Icons.arrow_forward_ios_sharp,
                              color: Violet),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: _pages[_selectedTabIndex],
          ),
          Positioned(
            child: bottomNavigationBar,
          ),
        ],
      ),
      // bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget get bottomNavigationBar {
    return Container(
      decoration: BoxDecoration(
        gradient: Red_Gradient_Rev,
        boxShadow: Red_High_Shadow_Rev,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          currentIndex: _selectedTabIndex,
          elevation: 0,
          onTap: _changeIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[500],
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'lib/presentation/Assets/Assets_Home/house.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'lib/presentation/Assets/Assets_Home/umbrella.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'lib/presentation/Assets/Assets_Home/logo_icon.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'lib/presentation/Assets/Assets_Home/user.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('lib/presentation/Assets/Assets_Home/headphones.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
