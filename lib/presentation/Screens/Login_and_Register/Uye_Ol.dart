import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class UyeOI extends StatefulWidget {
  static const String routname = '/uye_oi';

  @override
  _UyeOIState createState() => _UyeOIState();
}

class _UyeOIState extends State<UyeOI> {
  bool? radioValue = true;
  bool checkboxValue = false;
  final TextEditingController name = TextEditingController();
  final TextEditingController surname = TextEditingController();
  final TextEditingController identityNumber = TextEditingController();
  final TextEditingController eMail = TextEditingController();
  final TextEditingController telephoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('lib/presentation/Assets/Assets_Login_and_Register/logo.png',
                      width: 160),
                  Spacer(),
                  CircleIconButton(
                      buttonColor: Colors.white,
                      onPress: () {Navigator.pop(context);},
                      shadow: Red_Low_Shadow,
                      icon: Icons.close,
                      iconColor: Violet),
                ],
              ),
              SizedBox(height: 55),
              Text('Üye Ol', style: V40R),
              SizedBox(height: 35),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RadioText<bool>(
                              value: true,
                              groupvalue: radioValue,
                              onChange: (currentValue) =>
                                  setState(() => radioValue = currentValue),
                              text: 'Şahıs'),
                          RadioText<bool>(
                              value: false,
                              groupvalue: radioValue,
                              onChange: (currentValue) =>
                                  setState(() => radioValue = currentValue),
                              text: 'Kurumsal'),
                        ],
                      ),
                      SizedBox(height: 35),
                      if(radioValue == true)
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                      label: 'Adınız',
                                      TextColor: Violet,
                                      labelColor: Raisin_Black,
                                      controller: name,
                                      ),
                                ),
                                SizedBox(width: 25),
                                Expanded(
                                  child: CustomTextInput(
                                      label: 'SoyAdınız',
                                      TextColor: Violet,
                                      labelColor: Raisin_Black,
                                      controller: surname),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                                label: 'T.C. Yazınız',
                                TextColor: Violet,
                                labelColor: Raisin_Black,
                                controller: identityNumber),
                            SizedBox(height: 25),
                            CustomTextInput(
                                label: 'E-Postanız',
                                TextColor: Violet,
                                labelColor: Raisin_Black,
                                controller: eMail),
                            SizedBox(height: 25),
                            CustomTextInput(
                                label: 'Tel No Giriniz',
                                TextColor: Violet,
                                labelColor: Raisin_Black,
                                controller: telephoneNumber),
                            SizedBox(height: 25),
                            CustomTextInput(
                                label: 'Şifrenizi Yazın',
                                TextColor: Violet,
                                labelColor: Raisin_Black,
                                controller: password),
                            SizedBox(height: 15),
                            CustomTextInput(
                                label: 'Şifrenizi Tekrar Yazın',
                                TextColor: Violet,
                                labelColor: Raisin_Black),
                          ],
                        ),
                      if(radioValue == false)
                        Column(
                          children: [
                            CustomTextInput(
                                label: 'Firma Ünvanı',
                                TextColor: Violet,
                                labelColor: Raisin_Black),
                            SizedBox(height: 25),
                            CustomTextInput(
                                label: 'Vergi Kimlik No',
                                TextColor: Violet,
                                labelColor: Raisin_Black),
                            SizedBox(height: 25),
                            CustomTextInput(
                                label: 'Tel No Giriniz',
                                TextColor: Violet,
                                labelColor: Raisin_Black),
                            SizedBox(height: 25),
                            CustomTextInput(
                                label: 'E-Postanız',
                                TextColor: Violet,
                                labelColor: Raisin_Black),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                      label: 'Seçiniz',
                                      TextColor: Violet,
                                      labelColor: Raisin_Black),
                                ),
                                SizedBox(width: 25),
                                Expanded(
                                  child: CustomTextInput(
                                      label: 'Seçiniz',
                                      TextColor: Violet,
                                      labelColor: Raisin_Black),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                                label: 'Şifrenizi Yazın',
                                TextColor: Violet,
                                labelColor: Raisin_Black),
                            SizedBox(height: 25),
                            CustomTextInput(
                                label: 'Şifrenizi Tekrar Yazın',
                                TextColor: Violet,
                                labelColor: Raisin_Black),
                          ],
                        ),
                      SizedBox(height: 25),
                      CheckboxText(
                          text1: 'Poliçe Bilgilendirme ',
                          text2: 'formu’nu okudum.',
                          onChange: (currentValue) =>
                              setState(() => checkboxValue = currentValue ?? !checkboxValue),
                          checkboxValue: checkboxValue),
                      CheckboxText(
                          text1: 'Poliçe Bilgilendirme ',
                          text2: 'formu’nu okudum.',
                          onChange: (currentValue) =>
                              setState(() => checkboxValue = currentValue ?? !checkboxValue),
                          checkboxValue: checkboxValue),
                      CheckboxText(
                          text1: 'Aydınlatma Metni',
                          text2: '’ni okudum.',
                          onChange: (currentValue) =>
                              setState(() => checkboxValue = currentValue ?? !checkboxValue),
                          checkboxValue: checkboxValue),
                      SizedBox(height: 10),
                      SolidButton(
                        text: 'ÜYE OL',
                        onPress: () {},
                        shadow: Blue_High_Shadow,
                        gradient: Blue_Gradient_2,
                      ),
                      SizedBox(height: 25),
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
