import 'package:acente/presentation/Screens/Dask_Sigortasi/Dask_Request_Successful.dart';
import 'package:acente/presentation/Screens/Kasko_Sigortasi/Kasko_Request_Successful.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DaskPaymentProcess extends StatefulWidget {
  static const String routname = '/dask_payment_process';

  @override
  _DaskPaymentProcessState createState() => _DaskPaymentProcessState();
}

class _DaskPaymentProcessState extends State<DaskPaymentProcess> {
  bool switchValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: Grey_Gradient_Rev,
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
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
                    Text('Dask Sigortası', style: V28R),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: ThreeStep(step1: true, step2: true, step3: false),
              ),
              SizedBox(height: 15),
              Center(child: Text('Ödeme İşlemi', style: B18R)),
              SizedBox(height: 35),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 12, right: 12, top: 20, bottom: 10),
                          margin: EdgeInsets.only(top: 17),
                          decoration: BoxDecoration(
                            boxShadow: Green_Low_Shadow,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Blue,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 17),
                              Row(
                                children: [
                                  Image.asset(
                                    'lib/presentation/Assets/Assets_Common/logo.png',
                                    width: 115,
                                    height: 57,
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Dask Sigortası',
                                        style: V16Sb,
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        'Standart Teminatlı Ürün',
                                        style: V14R,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Text(
                                    '2.380,80 TL',
                                    style: B28R,
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'Peşin Fiyat',
                                    style: V14L,
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Text('Kredi Kartı Bilgileri', style: V20Sb),
                        SizedBox(height: 25),
                        Text('Kart Üzerindeki İsim', style: V16L),
                        SizedBox(height: 15),
                        CustomTextInput(
                          label: 'İsim Girin',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                        ),
                        SizedBox(height: 25),
                        Text('Kart Numarası', style: V16L),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextInput(
                                label: 'XXXX',
                                TextColor: Raisin_Black,
                                labelColor: Grey,
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: CustomTextInput(
                                label: 'XXXX',
                                TextColor: Raisin_Black,
                                labelColor: Grey,
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: CustomTextInput(
                                label: 'XXXX',
                                TextColor: Raisin_Black,
                                labelColor: Grey,
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: CustomTextInput(
                                label: 'XXXX',
                                TextColor: Raisin_Black,
                                labelColor: Grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Text('Son Kullanma Tarihi', style: V16L),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextInput(
                                label: 'Ay',
                                TextColor: Raisin_Black,
                                labelColor: Grey,
                                icon: Icons.keyboard_arrow_down,
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: CustomTextInput(
                                label: 'Yıl',
                                TextColor: Raisin_Black,
                                labelColor: Grey,
                                icon: Icons.keyboard_arrow_down,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Text('Güvenlik Kodu', style: V16L),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextInput(
                                label: 'XXX',
                                TextColor: Raisin_Black,
                                labelColor: Grey,
                              ),
                            ),
                            SizedBox(width: 18),
                            Expanded(
                                child: Image.asset(
                              'lib/presentation/Assets/Assets_Dask_Sigortasi/card.jpg',
                              width: 200,
                              height: 70,
                            )),
                          ],
                        ),
                        SizedBox(height: 25),
                        Text('Taksit Seçenekleri', style: B16Sb),
                        SizedBox(height: 15),
                        CustomTextInput(
                          label:
                              'Peşin - Aylık: 2.380,80 TL - Toplam: 2380,80 TL',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                          icon: Icons.keyboard_arrow_down,
                        ),
                        SizedBox(height: 15),
                        CheckboxText(
                            text1: 'Poliçe Bilgilendirme ',
                            text2: 'formu’nu okudum.',
                            onChange: (currentValue) => setState(() =>
                                checkboxValue = currentValue ?? !checkboxValue),
                            checkboxValue: checkboxValue),
                        CheckboxText(
                            text1: 'Mesafeli Satış Sözleşmesi',
                            text2: '’ni okudum.',
                            onChange: (currentValue) => setState(() =>
                                checkboxValue = currentValue ?? !checkboxValue),
                            checkboxValue: checkboxValue),
                        SizedBox(height: 15),
                        SolidButton(
                          text: 'Ödemeyi Tamamla',
                          onPress: () {
                            //Navigator.of(context).pushNamed();
                          },
                          shadow: Low_Shadow,
                          gradient: Green_Gradient,
                        ),
                        SizedBox(height: 30),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            boxShadow: Blue_Low_Shadow,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Referans Kodu', style: B16Sb),
                              SizedBox(height: 15),
                              TextInputWithLeading(
                                  label: 'Ruhsat sahibi TC kimlik numarası',
                                  TextColor: Raisin_Black,
                                  labelColor: Grey,
                                  Leadinglabel: 'T.C.',
                                  LeadingTextColor: Raisin_Black,
                                  LeadingColor: Unseleted),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: Green_High_Shadow_Rev,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'lib/presentation/Assets/Assets_Common/logo.png',
                          width: 115,
                          height: 57,
                        ),
                        SizedBox(width: 25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dask Sigortası',
                              style: V16Sb,
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Standart Teminatlı Ürün',
                              style: V14R,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '412,15 TL X 3 Taksit',
                              style: V14L,
                            ),
                            SizedBox(height: 8),
                            Text(
                              '2.380,80 TL',
                              style: B18R,
                            ),
                          ],
                        ),
                        Spacer(),
                        SolidButton(
                          text: 'ÖDEMEYI TAMAMLA',
                          onPress: () {},
                          shadow: Green_High_Shadow,
                          gradient: Green_Gradient,
                          fontSize: 14,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
