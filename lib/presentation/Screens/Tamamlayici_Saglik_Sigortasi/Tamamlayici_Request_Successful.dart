import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TamamlayiciRequestSuccessful extends StatefulWidget {
  static const String routname = '/tamamlayici_request_successful';

  @override
  _TamamlayiciRequestSuccessfulState createState() => _TamamlayiciRequestSuccessfulState();
}

class _TamamlayiciRequestSuccessfulState extends State<TamamlayiciRequestSuccessful> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: Grey_Gradient_Rev,
        ),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('lib/presentation/Assets/Assets_Home/logo.png', width: 160),
                ],
              ),
              SizedBox(height: 40),
              ThreeStep(step1: true, step2: true, step3: true),
              SizedBox(height: 15),
              Text('Ödeme Tamamla', style: B18R),
              SizedBox(height: 55),
              BigRightTick(),
              SizedBox(height: 40),
              Text(
                'Talebiniz Başarıyla Alınmıştır',
                style: V28R,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doeiusmod tempor incididunt ut labore et dolore.',
                  style: V16L,
                  textAlign: TextAlign.center),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('E-Posta adresi: ', style: V16R),
                  Text('sinan_soylu@live.nl',
                      style: B16R, textAlign: TextAlign.center),
                ],
              ),
              Spacer(),
              SolidButton(
                text: 'Anasayfaya Dön',
                onPress: () {
                  Navigator.of(context).popUntil((_) => count++ >= 4);
                },
                shadow: Low_Shadow,
                gradient: Blue_Gradient_2,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

