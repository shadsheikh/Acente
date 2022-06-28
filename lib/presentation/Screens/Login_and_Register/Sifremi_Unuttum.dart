import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class SifremiUnuttum extends StatefulWidget {
  static const String routname = '/sifremi_unuttum';

  @override
  _SifremiUnuttumState createState() => _SifremiUnuttumState();
}

class _SifremiUnuttumState extends State<SifremiUnuttum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconTextButton(
                            text: 'GERI',
                            buttonColor: Colors.white,
                            onPress: () {
                              Navigator.pop(context);
                            },
                            shadow: Blue_Low_Shadow,
                            icon: Icons.arrow_back_sharp,
                            color: Violet),
                        Spacer(),
                        CircleIconButton(
                            buttonColor: Colors.white,
                            onPress: () {},
                            shadow: Red_Low_Shadow,
                            icon: Icons.close,
                            iconColor: Violet),
                      ],
                    ),
                    SizedBox(height: 55),
                    Text('Şifremi Unuttum', style: V40R),
                    SizedBox(height: 35),
                    Text(
                        'Dijipol.com’a üye olurken kullandığınız telefon numarasını girin, yeni şifre oluşturmak için bağlantı adresinize gelsin.',
                        style: V16L),
                    SizedBox(height: 25),
                    CustomTextInput(
                        label: 'Tel No Giriniz',
                        TextColor: Violet,
                        labelColor: Raisin_Black),
                    SizedBox(height: 25),
                    SolidButton(
                      text: 'ŞIFRE GÖNDER',
                      onPress: () {},
                      shadow: Blue_High_Shadow,
                      gradient: Blue_Gradient_2,
                    ),
                    SizedBox(height: 35),
                  ],
                ),
              ),
              SizedBox(height: 17),
              Expanded(
                child: Image.asset(
                  'lib/presentation/Assets/Assets_Login_and_Register/bottomImage.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
