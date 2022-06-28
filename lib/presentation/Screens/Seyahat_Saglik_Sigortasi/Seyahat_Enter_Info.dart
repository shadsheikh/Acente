import 'package:acente/presentation/Screens/Seyahat_Saglik_Sigortasi/Seyahat_View_Offers.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeyahatEnterInfo extends StatefulWidget {
  static const String routname = '/seyahat_enter_info';

  @override
  _SeyahatEnterInfoState createState() => _SeyahatEnterInfoState();
}

class _SeyahatEnterInfoState extends State<SeyahatEnterInfo> {
  bool? radioValue1 = true;
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
                  Text('Seyahat Sağlık Sig.', style: V28R),
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
                                  image: AssetImage('lib/presentation/Assets/Assets_Common/edit_icon.png'),
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
                                RadioText<bool>(
                                    value: true,
                                    groupvalue: radioValue1,
                                    onChange: (currentValue) => setState(() => radioValue1 = currentValue),
                                    text: 'Kimlik No'),
                                RadioText<bool>(
                                    value: false,
                                    groupvalue: radioValue1,
                                    onChange: (currentValue) => setState(() => radioValue1 = currentValue),
                                    text: 'Pasaport/Yabancı Kimlik No'),
                              ],
                            ),
                            if (radioValue1 == true)
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
                            if (radioValue1 == false)
                              Column( 
                                children: [
                                  SizedBox(height: 15),
                                  CustomTextInput(
                                    label: 'Pasaport/Yabancı Kimlik No',
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
                                  image: AssetImage('lib/presentation/Assets/Assets_Common/edit_icon.png'),
                                )
                            ],
                          ),
                        ],
                      ),
                      if (radioValue1 == true && currentpage == 2)
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
                      if (radioValue1 == false && currentpage == 2)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Pasaport No / Kimlik No',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Poliçe Başlangıç Tarihi',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
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
                            CustomTextInput(
                              label: 'Anne Adı',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Baba Adı',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Doğum Tarihiniz',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Cinsiyetiniz',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'İl',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'İlçe',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Uyruk',
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
                                '03. Ruhsat & Araç Bilgileri',
                                style: V20Sb,
                              ),
                              Spacer(),
                              if ((currentpage % 10) > 3 && radioValue1 == true)
                                IconButtonRoundedRactangle(
                                  buttonColor: Colors.white,
                                  onPress: () {
                                    setState(() {
                                      currentpage = 3;
                                    });
                                  },
                                  shadow: Low_Shadow,
                                  image: AssetImage('lib/presentation/Assets/Assets_Common/edit_icon.png'),
                                )
                            ],
                          ),
                        ],
                      ),
                      if (currentpage == 3)
                        Column(
                          children: [
                            SizedBox(height: 15),
                            Text('Ruhsat Belge Seri Numaranızı Biliyor musunuz?', style: V16L),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                RadioText<bool>(
                                    value: true,
                                    groupvalue: radioValue3,
                                    onChange: (currentValue) => setState(() => radioValue3 = currentValue),
                                    text: 'Evet'),
                                RadioText<bool>(
                                    value: false,
                                    groupvalue: radioValue3,
                                    onChange: (currentValue) => setState(() => radioValue3 = currentValue),
                                    text: 'Hayır'),
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                                children: [
                                  Expanded(
                                    child: CustomTextInput(
                                      label: 'Belge Seri',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      icon: Icons.keyboard_arrow_down,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: CustomTextInput(
                                      label: 'Belge No',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      icon: Icons.keyboard_arrow_down,
                                    ),
                                  ),
                                ],
                              ),
                            SizedBox(height: 25),
                            Row(
                                children: [
                                  Expanded(
                                    child: CustomTextInput(
                                      label: 'Belge Seri',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      icon: Icons.keyboard_arrow_down,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: CustomTextInput(
                                      label: 'Belge No',
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
                                  if (radioValue1 == true)
                                        Navigator.of(context).pushNamed(SeyahatViewOffers.routname);
                                  currentpage = 4;
                                });
                              },
                              shadow: Low_Shadow,
                              gradient: Blue_Gradient_2,
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      //----4-----
                      if (radioValue1 == false)
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
                      if (currentpage == 4 && radioValue1 == false)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'İl',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'İlçe',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Belde',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Mahalle',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Cadde/Sokak',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Bina No',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Kapı No',
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
                            SizedBox(height: 25),
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
