import 'package:acente/presentation/Screens/Tamamlayici_Saglik_Sigortasi/Tamamlayici_Request_Successful.dart';
import 'package:acente/presentation/Screens/Tamamlayici_Saglik_Sigortasi/Tamamlayici_View_Offers.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TamamlayiciEnterInfo extends StatefulWidget {
  static const String routname = '/tamamlayici_enter_info';

  @override
  _TamamlayiciEnterInfoState createState() => _TamamlayiciEnterInfoState();
}

class _TamamlayiciEnterInfoState extends State<TamamlayiciEnterInfo> {
  int radioValue1 = 0;
  bool? radioValue3 = null;
  bool? radioValue31 = null;
  bool? radioValue32 = null;
  int currentpage = 1;
  bool isSelected = true;
  bool isEdit = false;

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
                  Text('T. Sağlık Sigortası', style: V28R),
                ],
              ),
              SizedBox(height: 40),
              ThreeStep(step1: true, step2: false, step3: false),
              SizedBox(height: 15),
              Center(child: Text('Bilgileri Gir', style: B18R)),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //----1-----
                      Column(
                        children: [
                          SizedBox(height: 15),
                          Divider(
                            indent: 0,
                            endIndent: 0,
                          ),
                          SizedBox(height: 25),
                          Row(
                            children: [
                              Text(
                                '01. Kimlik No ve Cep Telefonu',
                                style: V20Sb,
                              ),
                              Spacer(),
                              if (currentpage > 1)
                                IconButtonRoundedRactangle(
                                  buttonColor: Colors.white,
                                  onPress: () {
                                    setState(() {
                                      currentpage = 1;
                                    });
                                  },
                                  shadow: Low_Shadow,
                                  image: AssetImage(
                                      'lib/presentation/Assets/Assets_Common/edit_icon.png'),
                                )
                            ],
                          ),
                        ],
                      ),
                      if (currentpage == 1)
                        Column(
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                RadioText<int>(
                                    value: 0,
                                    groupvalue: radioValue1,
                                    onChange: (currentValue) => setState(
                                        () => radioValue1 = currentValue),
                                    text: 'Kendim'),
                                RadioText<int>(
                                    value: 1,
                                    groupvalue: radioValue1,
                                    onChange: (currentValue) => setState(
                                        () => radioValue1 = currentValue),
                                    text: 'Ailem'),
                                RadioText<int>(
                                    value: 2,
                                    groupvalue: radioValue1,
                                    onChange: (currentValue) => setState(
                                        () => radioValue1 = currentValue),
                                    text: 'Çocuğum'),
                              ],
                            ),
                            if (radioValue1 == 0)
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  TextInputWithLeading(
                                      label: 'TC Kimlik Numara',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: 'T.C.',
                                      LeadingTextColor: Raisin_Black,
                                      LeadingColor: Unseleted),
                                  SizedBox(height: 25),
                                  TextInputWithLeading(
                                      label: 'Telefon Numaranız',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: '+90',
                                      LeadingTextColor: Raisin_Black,
                                      LeadingColor: Unseleted),
                                  SizedBox(height: 25),
                                  SolidButton(
                                    text: 'DEVAM ET',
                                    onPress: () {
                                      setState(() {
                                        currentpage = 2;
                                      });
                                    },
                                    shadow: Low_Shadow,
                                    gradient: Blue_Gradient_2,
                                  ),
                                ],
                              ),
                            if (radioValue1 == 1)
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  TextInputWithLeading(
                                      label: 'TC Kimlik Numara',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: 'T.C.',
                                      LeadingTextColor: Raisin_Black,
                                      LeadingColor: Unseleted),
                                  SizedBox(height: 25),
                                  TextInputWithLeading(
                                      label: 'Telefon Numaranız',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: '+90',
                                      LeadingTextColor: Raisin_Black,
                                      LeadingColor: Unseleted),
                                  SizedBox(height: 25),
                                  SolidButton(
                                    text: 'DEVAM ET',
                                    onPress: () {
                                      setState(() {
                                        currentpage = 3;
                                      });
                                    },
                                    shadow: Low_Shadow,
                                    gradient: Blue_Gradient_2,
                                  ),
                                ],
                              ),
                            if (radioValue1 == 2)
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  TextInputWithLeading(
                                      label: 'TC Kimlik Numara',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: 'T.C.',
                                      LeadingTextColor: Raisin_Black,
                                      LeadingColor: Unseleted),
                                  SizedBox(height: 25),
                                  SolidButton(
                                    text: 'DEVAM ET',
                                    onPress: () {
                                      setState(() {
                                        currentpage = 2;
                                      });
                                    },
                                    shadow: Low_Shadow,
                                    gradient: Blue_Gradient_2,
                                  ),
                                ],
                              ),
                            SizedBox(height: 15),
                          ],
                        ),
                      //----2-----
                      Column(
                        children: [
                          SizedBox(height: 15),
                          Divider(),
                          SizedBox(height: 25),
                          Row(
                            children: [
                              Text(
                                '02. Sigortalı Bilgileri',
                                style: V20Sb,
                              ),
                              Spacer(),
                              if ((currentpage % 10) > 2)
                                IconButtonRoundedRactangle(
                                  buttonColor: Colors.white,
                                  onPress: () {
                                    setState(() {
                                      currentpage = 2;
                                    });
                                  },
                                  shadow: Low_Shadow,
                                  image: AssetImage(
                                      'lib/presentation/Assets/Assets_Common/edit_icon.png'),
                                )
                            ],
                          ),
                        ],
                      ),
                      if (currentpage == 2)
                        Column(
                          children: [
                            SizedBox(height: 15),
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
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      top: 10,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 5),
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    decoration: BoxDecoration(
                                      color: Azure,
                                    ),
                                    child: DropdownButton<String>(
                                            underline: SizedBox(),
                                            isExpanded: true,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            iconSize: 24,
                                            elevation: 16,
                                            style: const TextStyle(
                                                color: Color(0XFF0f0d1a)),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                              });
                                            },
                                            items: [
                                              DropdownMenuItem<String>(
                                                value: 'select',
                                                child: Text('İl'),
                                              ),

                                            ],
                                          ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      top: 10,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 5),
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    decoration: BoxDecoration(
                                      color: Azure,
                                    ),
                                    child: DropdownButton<String>(
                                            underline: SizedBox(),
                                            isExpanded: true,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            iconSize: 24,
                                            elevation: 16,
                                            style: const TextStyle(
                                                color: Color(0XFF0f0d1a)),
                                            onChanged: (String? newValue) {
                                              setState(() {

                                              });
                                            },
                                            items: [
                                              DropdownMenuItem<String>(
                                                value: 'select',
                                                child: Text('İlçe'),
                                              ),
                                            ],
                                          ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Doğum Tarihi',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                            SizedBox(height: 25),
                            SolidButton(
                              text: 'DEVAM ET',
                              onPress: () {
                                setState(() {
                                  currentpage = 3;
                                });
                              },
                              shadow: Low_Shadow,
                              gradient: Blue_Gradient_2,
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      //----3-----
                      Column(
                        children: [
                          SizedBox(height: 15),
                          Divider(
                            indent: 0,
                            endIndent: 0,
                          ),
                          SizedBox(height: 25),
                          Row(
                            children: [
                              Text(
                                '03. Poliçe Bilgileri',
                                style: V20Sb,
                              ),
                              Spacer(),
                              if ((currentpage % 10) > 3)
                                IconButtonRoundedRactangle(
                                  buttonColor: Colors.white,
                                  onPress: () {
                                    setState(() {
                                      currentpage = 3;
                                    });
                                  },
                                  shadow: Low_Shadow,
                                  image: AssetImage(
                                      'lib/presentation/Assets/Assets_Common/edit_icon.png'),
                                )
                            ],
                          ),
                        ],
                      ),
                      if (currentpage == 3)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (radioValue1 == 0)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15),
                                  Text('Vadesi biten poliçeniz var mı?',
                                      style: V16L),
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      RadioText<bool>(
                                          value: true,
                                          groupvalue: radioValue3,
                                          onChange: (currentValue) =>
                                              setState(() => radioValue3 =
                                                  currentValue),
                                          text: 'Evet, Var'),
                                      RadioText<bool>(
                                          value: false,
                                          groupvalue: radioValue3,
                                          onChange: (currentValue) =>
                                              setState(() => radioValue3 =
                                                  currentValue),
                                          text: 'Hayır, Yok'),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Text('Mevcut Sağlık Poliçeniz var mı?',
                                      style: V16L),
                                  SizedBox(height: 15),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          RadioText<bool>(
                                              value: true,
                                              groupvalue: radioValue3,
                                              onChange: (currentValue) =>
                                                  setState(() => radioValue3 =
                                                      currentValue),
                                              text: 'İlk kez yaptıracağım'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          RadioText<bool>(
                                              value: false,
                                              groupvalue: radioValue3,
                                              onChange: (currentValue) =>
                                                  setState(() => radioValue3 =
                                                      currentValue),
                                              text: 'Daha önceden poliçem var'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Boyunuz',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Kilonuz',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 35),
                                  SolidButton(
                                    text: 'DEVAM ET',
                                    onPress: () {
                                    },
                                    shadow: Low_Shadow,
                                    gradient: Blue_Gradient_2,
                                  ),
                                  SizedBox(height: 15),
                                ],
                              ),
                            if (radioValue1 == 1)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15),
                                  Text('Mevcut Sağlık Poliçeniz var mı?',
                                      style: V16L),
                                  SizedBox(height: 15),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          RadioText<bool>(
                                              value: true,
                                              groupvalue: radioValue3,
                                              onChange: (currentValue) =>
                                                  setState(() => radioValue3 =
                                                      currentValue),
                                              text: 'İlk kez yaptıracağım'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          RadioText<bool>(
                                              value: false,
                                              groupvalue: radioValue3,
                                              onChange: (currentValue) =>
                                                  setState(() => radioValue3 =
                                                      currentValue),
                                              text: 'Daha önceden poliçem var'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Boyunuz',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Kilonuz',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 35),
                                  SolidButton(
                                    text: 'DEVAM ET',
                                    onPress: () {
                                      setState(() {
                                        currentpage = 4;
                                      });
                                    },
                                    shadow: Low_Shadow,
                                    gradient: Blue_Gradient_2,
                                  ),
                                  SizedBox(height: 15),
                                ],
                              ),
                            if (radioValue1 == 2)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15),
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
                                  SizedBox(height: 25),
                                  TextInputWithLeading(
                                      label: 'E-Posta',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: '@',
                                      LeadingTextColor: Raisin_Black,
                                      LeadingColor: Unseleted),
                                  SizedBox(height: 25),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Boyunuz',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Kilonuz',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  CustomTextInput(
                                          label: 'Doğum Tarihi',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                  SizedBox(height: 25),
                                  CustomTextInput(
                                          label: 'Kilonuz',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                        ),
                                  SizedBox(height: 35),
                                  SolidButton(
                                    text: 'DEVAM ET',
                                    onPress: () {
                                      Navigator.of(context).pushNamed(TamamlayiciRequestSuccessful.routname);
                                    },
                                    shadow: Low_Shadow,
                                    gradient: Blue_Gradient_2,
                                  ),
                                  SizedBox(height: 15),
                                ],
                              ),
                          ],
                        ),
                      //----4-----
                      if (radioValue1 == 1)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
                          Divider(
                            indent: 0,
                            endIndent: 0,
                          ),
                          SizedBox(height: 25),
                          Text(
                            '04. Diğer Özellikler',
                            style: V20Sb,
                          ),
                        ],
                      ),
                      if (currentpage == 4 && radioValue1 == 1)
                        Column(
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: CustomTextInput(
                                    label: 'Birey',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  flex: 2,
                                  child: TextInputWithLeading(
                                      label: 'TC Kimlik Numara',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: 'T.C.',
                                      LeadingTextColor: Raisin_Black,
                                      LeadingColor: Unseleted),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Boyunuz',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Kilonuz',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            DualTextRow(
                              text1: 'Eşiniz • T.C. 25224566108 • 177CM • 89KG',
                              text2: 'Sil',
                              style1: RB16R,
                              style2: Q16B,
                            ),
                            SizedBox(height: 15),
                            Divider(),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                IconTextButton(
                                  text: 'YENI BIREY EKLE',
                                  buttonColor: Colors.white,
                                  onPress: () {},
                                  shadow: Blue_Low_Shadow,
                                  color: Violet,
                                  icon: Icons.add_circle_outline,
                                  padding: EdgeInsets.all(10),
                                ),
                              ],
                            ),
                            SizedBox(height: 35),
                            SolidButton(
                              text: 'Kaydet ve Devam Et',
                              onPress: () {
                                Navigator.of(context)
                                    .pushNamed(TamamlayiciViewOffers.routname);
                              },
                              shadow: Low_Shadow,
                              gradient: Blue_Gradient_2,
                            ),
                            SizedBox(height: 15),
                          ],
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
