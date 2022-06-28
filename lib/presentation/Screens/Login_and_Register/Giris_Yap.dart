import 'package:acente/presentation/Screens/Login_and_Register/Sifremi_Unuttum.dart';
import 'package:acente/presentation/Screens/Login_and_Register/Uye_Ol.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GirisYap extends StatefulWidget {
  static const String routname = '/giris_yap';

  @override
  _GirisYapState createState() => _GirisYapState();
}

class _GirisYapState extends State<GirisYap> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children : [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                        'lib/presentation/Assets/Assets_Login_and_Register/logo.png',
                        width: 160),
                    Spacer(),
                    CircleIconButton(
                        buttonColor: Colors.white,
                        onPress: () {
                          Navigator.pop(context);
                        },
                        shadow: Red_Low_Shadow,
                        icon: Icons.close,
                        iconColor: Violet),
                  ],
                ),
                SizedBox(height: 55),
                Text('Giriş Yap', style: V40R),
                SizedBox(height: 35),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomTextInput(
                            label: 'Kullanıcı Adı / Telefon',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: username),
                        SizedBox(height: 25),
                        CustomTextInput(
                            label: 'Şifre giriniz',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: password),
                        SizedBox(height: 25),
                        SolidButton(
                              text: 'GIRIŞ YAP',
                              onPress: () {
                              },
                              shadow: Blue_High_Shadow,
                              gradient: Blue_Gradient_2,
                            ),
                        SizedBox(height: 35),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(SifremiUnuttum.routname);
                              },
                              child: Text(
                                'Şifremi Unuttum',
                                style: LB16R,
                              ),
                            ),
                            Spacer(),
                            Text('Üye Değilseniz ', style: V16R),
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(UyeOI.routname);
                                },
                                child: Text('Üye Olun', style: LB16R)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 17),
              ],
          ),
            ),
          Positioned(
            bottom: 0-MediaQuery.of(context).viewInsets.bottom,
            height: 250,
              child: Image.asset(
                'lib/presentation/Assets/Assets_Login_and_Register/bottomImage.png',
              ),
            ),
          ]
        ),
      ),
    );
  }
}
