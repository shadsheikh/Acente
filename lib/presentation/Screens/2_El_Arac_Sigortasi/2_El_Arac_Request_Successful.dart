import 'package:acente/presentation/Screens/Destek/QR_ile_tan%C4%B1mla.dart';
import 'package:acente/presentation/Screens/Kasko_Sigortasi/Kasko_View_Offers.dart';
import 'package:acente/presentation/Screens/Teklif_Al/Teklif_Al.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoElAracRequestSuccessful extends StatefulWidget {
  static const String routname = '/two_el_arac_request_successful';

  @override
  _TwoElAracRequestSuccessfulState createState() =>
      _TwoElAracRequestSuccessfulState();
}

class _TwoElAracRequestSuccessfulState
    extends State<TwoElAracRequestSuccessful> {
  int count = 0;
  bool checkboxValue = false;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
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
                  Text('2. El Araç Sig.', style: V28R),
                ],
              ),
              SizedBox(height: 40),
              Image.asset('lib/presentation/Assets/Assets_2_El_Arac_Sigortasi/logo.png'),
              SizedBox(height: 25),
              Text(
                'Sigortalı & Sigorta Ettiren Bilgileri: 12392393****',
                style: V16Sb,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text('1.311,25 TL', style: B20Sb),
              SizedBox(height: 10),
              Text('412,15 TL X 3 Taksit', style: Q16R),
              SizedBox(height: 25),
              CheckboxText(
                  text1: 'Poliçe Bilgilendirme formu',
                  text2: '’nu okudum',
                  onChange: (currentValue) => setState(
                      () => checkboxValue = currentValue ?? !checkboxValue),
                  checkboxValue: checkboxValue),
              CheckboxText(
                  text1: 'Aydınlatma Metni',
                  text2: '’ni okudum.',
                  onChange: (currentValue) => setState(
                      () => checkboxValue = currentValue ?? !checkboxValue),
                  checkboxValue: checkboxValue),
              SizedBox(height: 25),
              SolidButton(
                text: 'DEVAM ET',
                onPress: () {
                  Navigator.of(context).popUntil((_) => count++ >= 4);
                },
                shadow: Low_Shadow,
                gradient: Green_Gradient,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
