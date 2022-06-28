import 'package:acente/presentation/Screens/Hesabim/Ayarlar.dart';
import 'package:acente/presentation/Screens/Hesabim/Dil_Sec.dart';
import 'package:acente/presentation/Screens/Hesabim/Sifre_Degistir.dart';
import 'package:acente/presentation/Screens/Start_Screens/acente_loading_screen.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class Hesabim extends StatefulWidget {
static const String routname = '/hesabim';

  @override
  _HesabimState createState() => _HesabimState();
}

class _HesabimState extends State<Hesabim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
            gradient: Grey_Gradient_Rev,
          ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 17),
                Row(
                  children: [
                    Image.asset('lib/presentation/Assets/Assets_Home/logo.png', width: 160),
                    Spacer(),
                    BorderButton(
                        text: 'S.SOYLU',
                        color: Ternary,
                        onPress: () {},
                        shadow: Red_High_Shadow,
                        fontSize: 12,
                        padding:
                        EdgeInsets.symmetric(vertical:9, horizontal: 10)),
                  ],
                ),
                SizedBox(height: 55),
                Text('Hesabım',style: V40R),
                SizedBox(height: 35),
                PolicelerimListContent(title: 'Şifre Değiştir', image: 'password.png', onTap: (){Navigator.of(context).pushNamed(SifreDegistir.routname);}),
                SizedBox(height: 25),
                PolicelerimListContent(title: 'Dil Seçimi', image: 'translate.png', onTap: (){Navigator.of(context).pushNamed(DilSec.routname);}),
                SizedBox(height: 25),
                PolicelerimListContent(title: 'Ayarlar', image: 'manage.png', onTap: (){Navigator.of(context).pushNamed(Ayarlar.routname);}),
                SizedBox(height: 25),
                PolicelerimListContent(title: 'Çikiş', image: 'exit.png', onTap: (){Navigator.of(context).pushNamed(AcenteLoadingScreen.routeName);}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
