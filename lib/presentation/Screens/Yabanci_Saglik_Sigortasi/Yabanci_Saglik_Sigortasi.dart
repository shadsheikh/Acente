import 'package:acente/presentation/Screens/Destek/QR_ile_tan%C4%B1mla.dart';
import 'package:acente/presentation/Screens/Yabanci_Saglik_Sigortasi/Yabanci_Enter_Info.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YabanciSaglikSigortasi extends StatefulWidget {
  static const String routname = '/yabanci_saglik_sigortasi';

  @override
  _YabanciSaglikSigortasiState createState() => _YabanciSaglikSigortasiState();
}

class _YabanciSaglikSigortasiState extends State<YabanciSaglikSigortasi> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'lib/presentation/Assets/Assets_Yabanci_Saglik_Sigortasi/backgroundImage.png'),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
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
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Image.asset('lib/presentation/Assets/Assets_Teklif_AI/yabanci_saglik_sig.png',
                        width: 48),
                    SizedBox(width: 20),
                    Flexible(child: Text('Yabancı Sağlık Sigortası', style: V28R)),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: Red_High_Shadow_Rev,
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Expanded(
                        child: Stack(
                          children: [
                            Positioned(
                              child: Image.asset(
                                  'lib/presentation/Assets/Assets_Common/path.png'),
                              right: 0,
                              bottom: 0,
                              height: 150,
                              width: 150,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 25),
                              child: Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 15),
                                      SolidButton(
                                        text: 'PASAPORT   TARAYICI   KULLAN',
                                        onPress: () {
                                          Navigator.of(context).pushNamed(
                                              QRIleTanimla.routname);
                                        },
                                        shadow: Low_Shadow,
                                        color: Violet,
                                      ),
                                      SizedBox(height: 25),
                                      CustomTextInput(
                                            label: 'Adınız (Opsiyonel)',
                                            TextColor: Raisin_Black,
                                            labelColor: Grey,
                                          ),
                                      SizedBox(height: 25),
                                      CustomTextInput(
                                            label: 'Soyadınız (Opsiyonel)',
                                            TextColor: Raisin_Black,
                                            labelColor: Grey,
                                          ),
                                          SizedBox(height: 25),
                                      TextInputWithLeading(
                                          label: 'Telefon Numaranız',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          Leadinglabel: '+90',
                                          LeadingTextColor: Raisin_Black,
                                          LeadingColor: Unseleted),
                                      CheckboxText(
                                          text1: 'Poliçe Bilgilendirme ',
                                          text2: 'formu’nu okudum.',
                                          onChange: (currentValue) =>
                                              setState(() =>
                                                  checkboxValue =
                                                      currentValue ??
                                                          !checkboxValue),
                                          checkboxValue: checkboxValue),
                                      CheckboxText(
                                          text1: 'Poliçe Bilgilendirme ',
                                          text2: 'formu’nu okudum.',
                                          onChange: (currentValue) =>
                                              setState(() =>
                                                  checkboxValue =
                                                      currentValue ??
                                                          !checkboxValue),
                                          checkboxValue: checkboxValue),
                                      CheckboxText(
                                          text1: 'Aydınlatma Metni',
                                          text2: '’ni okudum.',
                                          onChange: (currentValue) =>
                                              setState(() =>
                                                  checkboxValue =
                                                      currentValue ??
                                                          !checkboxValue),
                                          checkboxValue: checkboxValue),
                                      SolidButton(
                                        text: 'TEKLIF AL',
                                        onPress: () {
                                          Navigator.of(context).pushNamed(
                                              YabanciEnterInfo.routname);
                                        },
                                        shadow: Low_Shadow,
                                        gradient: Green_Gradient,
                                      ),
                                      SizedBox(height: 30),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
