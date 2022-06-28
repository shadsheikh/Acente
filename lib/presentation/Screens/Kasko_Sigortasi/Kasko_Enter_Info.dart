import 'package:acente/presentation/Screens/Kasko_Sigortasi/Kasko_View_Offers.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KaskoEnterInfo extends StatefulWidget {
  static const String routname = '/kasko_enter_info';

  @override
  _KaskoEnterInfoState createState() => _KaskoEnterInfoState();
}

class _KaskoEnterInfoState extends State<KaskoEnterInfo> {
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
                  Text('Kasko Sigortası', style: V28R),
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
                                '01. Plaka, Kimlik ve Cep Telefonu',
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
                                    text: 'Plakam Var'),
                                RadioText<bool>(
                                    value: false,
                                    groupvalue: radioValue1,
                                    onChange: (currentValue) => setState(() => radioValue1 = currentValue),
                                    text: 'Plakam Yok'),
                              ],
                            ),
                            if (radioValue1 == true)
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  TextInputWithLeading(
                                      label: 'Ruhsat sahibi TC kimlik numarası',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: 'T.C.',
                                      LeadingTextColor: Raisin_Black,
                                      LeadingColor: Unseleted),
                                  SizedBox(height: 25),
                                  TextInputWithLeading(
                                      label: 'Plaka',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: 'TR',
                                      LeadingTextColor: Colors.white,
                                      LeadingColor: Blue),
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
                                        currentpage = 21;
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
                                  TextInputWithLeading(
                                      label: 'Ruhsat sahibi TC kimlik numarası',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      Leadinglabel: 'T.C.',
                                      LeadingTextColor: Raisin_Black,
                                      LeadingColor: Unseleted),
                                  SizedBox(height: 25),
                                  CustomTextInput(
                                    label: 'Aracınızın Plaka İli',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
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
                                        currentpage = 22;
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
                                      currentpage = 21;
                                    });
                                  },
                                  shadow: Low_Shadow,
                                  image: AssetImage('lib/presentation/Assets/Assets_Common/edit_icon.png'),
                                )
                            ],
                          ),
                        ],
                      ),
                      if (currentpage == 21)
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
                                                child: Text('İlçe')
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
                      if (currentpage == 22)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25),
                            Text('Sıfır Aracın Alındığı Tarih', style: V16Sb),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Gün Seç',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Ay Seç',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Yıl Seç',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Kullanım Tarzı',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Kullanım Şekli',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Marka',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Model Yılı',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Model',
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
                              if ((currentpage % 10) > 3)
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
                                    text: 'Evet Biliyorum'),
                                RadioText<bool>(
                                    value: false,
                                    groupvalue: radioValue3,
                                    onChange: (currentValue) => setState(() => radioValue3 = currentValue),
                                    text: 'Hayır Bilmiyorum'),
                              ],
                            ),
                            if (radioValue3 == true)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 25),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Belge Seri',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Belge No',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  if (isEdit == false)
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        InfoBox(
                                            text:
                                                'Emniyet Genel Müdürlüğü’nde kayıtlı araç bilgileriniz, aşağıdadır, lütfen doğruluğunu kontrol edin',
                                            height: 97),
                                        SizedBox(height: 35),
                                        DualTextColumn(text1: 'Ruhsat Tescil Tarihi', text2: '21.01.2021'),
                                        SizedBox(height: 25),
                                        DualTextColumn(text1: 'Kullanım Tarzı Tescil Tarihi', text2: 'Otomobil'),
                                        SizedBox(height: 25),
                                        DualTextColumn(text1: 'Marka', text2: 'Peugeot'),
                                        SizedBox(height: 25),
                                        DualTextColumn(text1: 'Plaka', text2: '34 BFP 555'),
                                        SizedBox(height: 25),
                                        DualTextColumn(text1: 'Model Yılı', text2: '2018'),
                                        SizedBox(height: 25),
                                        DualTextColumn(text1: 'Model', text2: '308 Allure Sport 1.2 Puretech 130 S&S EAT8'),
                                        SizedBox(height: 25),
                                        Row(
                                          children: [
                                            IconButtonRoundedRactangle(
                                              buttonColor: Colors.white,
                                              onPress: () {
                                                setState(() {
                                                  isEdit = true;
                                                });
                                              },
                                              shadow: Low_Shadow,
                                              image: AssetImage('lib/presentation/Assets/Assets_Common/edit_icon.png'),
                                            ),
                                            SizedBox(width: 15),
                                            InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    isEdit = true;
                                                  });
                                                },
                                                child: Text('Düzenle', style: B18Sb)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  //Edit
                                  if (isEdit == true)
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        InfoBox(text: 'Araç bilgisi bulunamadı, lütfen araç bilgisini giriniz.', height: 97),
                                        SizedBox(height: 35),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: CustomTextInput(
                                                label: 'Gün Seç',
                                                TextColor: Raisin_Black,
                                                labelColor: Grey,
                                                icon: Icons.keyboard_arrow_down,
                                              ),
                                            ),
                                            SizedBox(width: 15),
                                            Expanded(
                                              child: CustomTextInput(
                                                label: 'Ay Seç',
                                                TextColor: Raisin_Black,
                                                labelColor: Grey,
                                                icon: Icons.keyboard_arrow_down,
                                              ),
                                            ),
                                            SizedBox(width: 15),
                                            Expanded(
                                              child: CustomTextInput(
                                                label: 'Yıl Seç',
                                                TextColor: Raisin_Black,
                                                labelColor: Grey,
                                                icon: Icons.keyboard_arrow_down,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 25),
                                        CustomTextInput(
                                          label: 'Kullanım Tarzı',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                        SizedBox(height: 25),
                                        CustomTextInput(
                                          label: 'Kullanım Şekli',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                        SizedBox(height: 25),
                                        CustomTextInput(
                                          label: 'Marka',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                        SizedBox(height: 25),
                                        CustomTextInput(
                                          label: 'Model Yılı',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                        SizedBox(height: 25),
                                        CustomTextInput(
                                          label: 'Model',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            SizedBox(height: 35),
                            SolidButton(
                              text: 'DEVAM ET',
                              onPress: () {
                                setState(() {
                                  isEdit = false;
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
                      if (currentpage == 4)
                        Column(
                          children: [
                            SizedBox(height: 15),
                            Text('Sigortalamak İstediğiniz Araç Aksesuarı var mı?', style: V16L),
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
                            if (radioValue3 == true)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextInput(
                                    label: 'Doğum Tarihi',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                  SizedBox(height: 25),
                                  Text('Aracınız Engeli Aracı mı?', style: V16L),
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      RadioText<bool>(
                                          value: true,
                                          groupvalue: radioValue31,
                                          onChange: (currentValue) => setState(() => radioValue31 = currentValue),
                                          text: 'Evet'),
                                      RadioText<bool>(
                                          value: false,
                                          groupvalue: radioValue31,
                                          onChange: (currentValue) => setState(() => radioValue31 = currentValue),
                                          text: 'Hayır'),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  Text('Sigortalamak İstediğiniz Araç Aksesuarı var mı?', style: V16L),
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      RadioText<bool>(
                                          value: true,
                                          groupvalue: radioValue32,
                                          onChange: (currentValue) => setState(() => radioValue32 = currentValue),
                                          text: 'Evet'),
                                      RadioText<bool>(
                                          value: false,
                                          groupvalue: radioValue32,
                                          onChange: (currentValue) => setState(() => radioValue32 = currentValue),
                                          text: 'Hayır'),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                    'Araç Aksesuarları',
                                    style: V18Sb,
                                  ),
                                  SizedBox(height: 20),
                                  VehicleAccessories(title: 'LPG', text: 'Örnek: 1000 TL'),
                                  SizedBox(height: 10),
                                  VehicleAccessories(title: 'Radyo Teyp / CD Çalar', text: 'Örnek: 1000 TL'),
                                  SizedBox(height: 10),
                                  VehicleAccessories(title: 'Navigasyon', text: 'Örnek: 1000 TL'),
                                  SizedBox(height: 10),
                                  VehicleAccessories(title: 'Çelik Jant / Lastik', text: 'Örnek: 1000 TL'),
                                  SizedBox(height: 10),
                                  VehicleAccessories(title: 'Televizyon', text: 'Örnek: 1000 TL'),
                                  SizedBox(height: 10),
                                  VehicleAccessories(title: 'Diğer', text: 'Örnek: 1000 TL'),
                                ],
                              ),
                            SizedBox(height: 25),
                            SolidButton(
                              text: 'Kaydet ve Devam Et',
                              onPress: () {
                                Navigator.of(context).pushNamed(KaskoViewOffers.routname);
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
