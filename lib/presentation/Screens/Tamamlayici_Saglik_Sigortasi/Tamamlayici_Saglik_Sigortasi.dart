import 'package:acente/presentation/Screens/Destek/QR_ile_tan%C4%B1mla.dart';
import 'package:acente/presentation/Screens/Tamamlayici_Saglik_Sigortasi/Tamamlayici_Enter_Info.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TamamlayiciSaglikSigortasi extends StatefulWidget {
  static const String routname = '/tamamlayici_saglik_sigortasi';

  @override
  _TamamlayiciSaglikSigortasiState createState() => _TamamlayiciSaglikSigortasiState();
}

class _TamamlayiciSaglikSigortasiState extends State<TamamlayiciSaglikSigortasi> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'lib/presentation/Assets/Assets_Tamamlayici_Saglik_Sigortasi/backgroundImage.png'),
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
                    Image.asset('lib/presentation/Assets/Assets_Teklif_AI/t_saglik_sigortasi.png',
                        width: 48),
                    SizedBox(width: 20),
                    Flexible(child: Text('Tamamlayıcı Sağlık Sigortası', style: V28R)),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: Red_High_Shadow_Rev,
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        TabBar(
                          labelStyle: B20Sb,
                          unselectedLabelStyle: B20Sb,
                          unselectedLabelColor: Blue.withOpacity(0.5),
                          labelColor: Blue,
                          tabs: [
                            Tab(text: 'Kendim'),
                            Tab(text: 'Çocuğum'),
                            Tab(text: 'Ailem'),
                          ],
                        ),
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
                              TabBarView(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25),
                                    child: Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 30),
                                            TextInputWithLeading(
                                                label: 'Telefon Numaranız',
                                                TextColor: Raisin_Black,
                                                labelColor: Grey,
                                                Leadinglabel: '+90',
                                                LeadingTextColor: Raisin_Black,
                                                LeadingColor: Unseleted),
                                            SizedBox(height: 25),
                                            TextInputWithLeading(
                                                label:
                                                    'Ruhsat sahibi TC kimlik numarası',
                                                TextColor: Raisin_Black,
                                                labelColor: Grey,
                                                Leadinglabel: 'T.C.',
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
                                                    TamamlayiciEnterInfo.routname);
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
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25),
                                    child: Expanded(
                                      child: SingleChildScrollView(
                                        child: Expanded(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                SizedBox(height: 30),
                                                CustomTextInput(
                                                  label: 'Plaka',
                                                  TextColor: Raisin_Black,
                                                  labelColor: Grey,
                                                  icon:
                                                      Icons.keyboard_arrow_down,
                                                ),
                                                SizedBox(height: 25),
                                                TextInputWithLeading(
                                                    label: 'Telefon Numaranız',
                                                    TextColor: Raisin_Black,
                                                    labelColor: Grey,
                                                    Leadinglabel: '+90',
                                                    LeadingTextColor:
                                                        Raisin_Black,
                                                    LeadingColor: Unseleted),
                                                SizedBox(height: 25),
                                                TextInputWithLeading(
                                                    label:
                                                        'Ruhsat sahibi TC kimlik numarası',
                                                    TextColor: Raisin_Black,
                                                    labelColor: Grey,
                                                    Leadinglabel: 'T.C.',
                                                    LeadingTextColor:
                                                        Raisin_Black,
                                                    LeadingColor: Unseleted),
                                                CheckboxText(
                                                    text1:
                                                        'Poliçe Bilgilendirme ',
                                                    text2: 'formu’nu okudum.',
                                                    onChange: (currentValue) =>
                                                        setState(() =>
                                                            checkboxValue =
                                                                currentValue ??
                                                                    !checkboxValue),
                                                    checkboxValue:
                                                        checkboxValue),
                                                CheckboxText(
                                                    text1:
                                                        'Poliçe Bilgilendirme ',
                                                    text2: 'formu’nu okudum.',
                                                    onChange: (currentValue) =>
                                                        setState(() =>
                                                            checkboxValue =
                                                                currentValue ??
                                                                    !checkboxValue),
                                                    checkboxValue:
                                                        checkboxValue),
                                                CheckboxText(
                                                    text1: 'Aydınlatma Metni',
                                                    text2: '’ni okudum.',
                                                    onChange: (currentValue) =>
                                                        setState(() =>
                                                            checkboxValue =
                                                                currentValue ??
                                                                    !checkboxValue),
                                                    checkboxValue:
                                                        checkboxValue),
                                                SolidButton(
                                                  text: 'TEKLIF AL',
                                                  onPress: () {
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                            TamamlayiciEnterInfo.routname);
                                                  },
                                                  shadow: Low_Shadow,
                                                  gradient: Green_Gradient,
                                                ),
                                                SizedBox(height: 30)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25),
                                    child: Expanded(
                                      child: SingleChildScrollView(
                                        child: Expanded(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                SizedBox(height: 30),
                                                CustomTextInput(
                                                  label: 'Plaka',
                                                  TextColor: Raisin_Black,
                                                  labelColor: Grey,
                                                  icon:
                                                      Icons.keyboard_arrow_down,
                                                ),
                                                SizedBox(height: 25),
                                                TextInputWithLeading(
                                                    label: 'Telefon Numaranız',
                                                    TextColor: Raisin_Black,
                                                    labelColor: Grey,
                                                    Leadinglabel: '+90',
                                                    LeadingTextColor:
                                                        Raisin_Black,
                                                    LeadingColor: Unseleted),
                                                SizedBox(height: 25),
                                                TextInputWithLeading(
                                                    label:
                                                        'Ruhsat sahibi TC kimlik numarası',
                                                    TextColor: Raisin_Black,
                                                    labelColor: Grey,
                                                    Leadinglabel: 'T.C.',
                                                    LeadingTextColor:
                                                        Raisin_Black,
                                                    LeadingColor: Unseleted),
                                                CheckboxText(
                                                    text1:
                                                        'Poliçe Bilgilendirme ',
                                                    text2: 'formu’nu okudum.',
                                                    onChange: (currentValue) =>
                                                        setState(() =>
                                                            checkboxValue =
                                                                currentValue ??
                                                                    !checkboxValue),
                                                    checkboxValue:
                                                        checkboxValue),
                                                CheckboxText(
                                                    text1:
                                                        'Poliçe Bilgilendirme ',
                                                    text2: 'formu’nu okudum.',
                                                    onChange: (currentValue) =>
                                                        setState(() =>
                                                            checkboxValue =
                                                                currentValue ??
                                                                    !checkboxValue),
                                                    checkboxValue:
                                                        checkboxValue),
                                                CheckboxText(
                                                    text1: 'Aydınlatma Metni',
                                                    text2: '’ni okudum.',
                                                    onChange: (currentValue) =>
                                                        setState(() =>
                                                            checkboxValue =
                                                                currentValue ??
                                                                    !checkboxValue),
                                                    checkboxValue:
                                                        checkboxValue),
                                                SolidButton(
                                                  text: 'TEKLIF AL',
                                                  onPress: () {
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                            TamamlayiciEnterInfo.routname);
                                                  },
                                                  shadow: Low_Shadow,
                                                  gradient: Green_Gradient,
                                                ),
                                                SizedBox(height: 30)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
