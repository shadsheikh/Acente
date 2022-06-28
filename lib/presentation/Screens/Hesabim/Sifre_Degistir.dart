import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SifreDegistir extends StatefulWidget {
  static const String routname = '/sifre_degistir';
  @override
  _SifreDegistirState createState() => _SifreDegistirState();
}

class _SifreDegistirState extends State<SifreDegistir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: Grey_Gradient_Rev,
          ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
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
                SizedBox(height: 57),
                Text('Şifre Değiştir', style: V40R),
                SizedBox(height: 35),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomTextInput(
                          label: 'Kullanıcı adı / Telefon',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                        ),
                        SizedBox(height: 35),
                        CustomTextInput(
                          label: 'Şifreniz',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                        ),
                        SizedBox(height: 35),
                        CustomTextInput(
                          label: 'Yeni Şifre',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                        ),
                        SizedBox(height: 35),
                        CustomTextInput(
                          label: 'Yeni Şifre Tekrar',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                        ),
                        SizedBox(height: 35),
                        SolidButton(
                            text: 'Değiştir',
                            onPress: () {},
                            shadow: Blue_High_Shadow,
                            gradient: Blue_Gradient_2),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
