import 'package:acente/presentation/Screens/Login_and_Register/Giris_Yap.dart';
import 'package:acente/presentation/Screens/Login_and_Register/Uye_Ol.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KaskoDegeriSorgula extends StatefulWidget {
  static const String routname = '/kasko_degeri_sorgula';

  @override
  _KaskoDegeriSorgulaState createState() => _KaskoDegeriSorgulaState();
}

class _KaskoDegeriSorgulaState extends State<KaskoDegeriSorgula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
              Text('Kasko Değeri sorgula', style: V40R),
              SizedBox(height: 35),
              CustomTextInput(
                  label: 'Model yılı',
                  TextColor: Violet,
                  labelColor: Raisin_Black),
              SizedBox(height: 25),
              CustomTextInput(
                  label: 'Marka', TextColor: Violet, labelColor: Raisin_Black),
              SizedBox(height: 25),
              CustomTextInput(
                  label: 'Model', TextColor: Violet, labelColor: Raisin_Black),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Kasko Değeri', style: V20R),
                  SizedBox(height: 14),
                  Text('Toyota Corolla 1.4 Advanced 2021', style: V14R),
                  SizedBox(height: 18),
                  Text('250.000 Tl', style: B34Sb),
                ],
              ),
              Spacer(),
              SolidButton(
                  text: 'TAMAMLA',
                  onPress: () {},
                  shadow: Low_Shadow,
                  gradient: Blue_Gradient_2),
              SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
