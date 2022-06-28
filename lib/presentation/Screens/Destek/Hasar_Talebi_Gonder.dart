import 'package:acente/presentation/Screens/Login_and_Register/Giris_Yap.dart';
import 'package:acente/presentation/Screens/Login_and_Register/Uye_Ol.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'QR_ile_tanımla.dart';

class HasarTalebiGonder extends StatefulWidget {
  static const String routname = '/hasar_talebi_gonder';

  @override
  _HasarTalebiGonderState createState() => _HasarTalebiGonderState();
}

class _HasarTalebiGonderState extends State<HasarTalebiGonder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text('Hasar Talebi Gönder', style: V40R),
                      SizedBox(height: 35),
                      SolidButton(
                          text: 'QR İLE TANIMLA',
                          onPress: () {
                            Navigator.of(context)
                                .pushNamed(QRIleTanimla.routname);
                          },
                          shadow: Low_Shadow,
                          color: Violet),
                      SizedBox(height: 25),
                      Column(
                        children: [
                          CustomTextInput(
                              label: 'Kategori',
                              TextColor: Violet,
                              labelColor: Raisin_Black),
                          SizedBox(height: 25),
                          CustomTextInput(
                              label: 'TC kimlik / Vergi no',
                              TextColor: Violet,
                              labelColor: Raisin_Black),
                          SizedBox(height: 25),
                          Row(
                            children: [
                              Expanded(
                                child: CustomTextInput(
                                    label: 'Plaka',
                                    TextColor: Violet,
                                    labelColor: Raisin_Black),
                              ),
                              SizedBox(width: 25),
                              Expanded(
                                child: CustomTextInput(
                                    label: 'Belge Seri No',
                                    TextColor: Violet,
                                    labelColor: Raisin_Black),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          CustomTextInput(
                              label: 'Telefon Numaranız',
                              TextColor: Violet,
                              labelColor: Raisin_Black),
                          SizedBox(height: 25),
                          CustomTextInput(
                              label: 'E-posta Adresi',
                              TextColor: Violet,
                              labelColor: Raisin_Black),
                          SizedBox(height: 25),
                          CustomTextInput(
                              label: 'Poliçe Numarası',
                              TextColor: Violet,
                              labelColor: Raisin_Black),
                          SizedBox(height: 25),
                        ],
                      ),
                      Container(
                        height: 94,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: Low_Shadow),
                        child: Column(
                          children: [
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.upload_file, color: Violet),
                                SizedBox(width: 10),
                                Text('Kaza Tutanağı Ekle', style: V16R),
                              ],
                            ),
                            SizedBox(height: 15),
                            Text('jpg, pdf, png, xls, xlsx, word, wordx',
                                style: V14R),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      DualTextRow(text1: 'Hasar_talebi.ppt', text2: 'Sil'),
                      SizedBox(height: 25),
                      DualTextRow(text1: 'kaza_tutanagi.zip', text2: 'Sil'),
                      SizedBox(height: 25),
                      SolidButton(
                          text: 'QR İLE TANIMLA',
                          onPress: () {},
                          shadow: Low_Shadow,
                          gradient: Blue_Gradient_2),
                      SizedBox(height: 50),
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
