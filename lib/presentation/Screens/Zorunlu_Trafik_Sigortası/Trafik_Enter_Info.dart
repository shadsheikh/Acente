import 'package:acente/presentation/Screens/Zorunlu_Trafik_Sigortas%C4%B1/Trafik_View_Offers.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrafikEnterInfo extends StatefulWidget {
  static const String routname = '/trafik_enter_info';

  @override
  _TrafikEnterInfoState createState() => _TrafikEnterInfoState();
}

class _TrafikEnterInfoState extends State<TrafikEnterInfo> {
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
                  Text('Zorunlu Trafik Sig.', style: V28R),
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
                                RadioText<bool>(
                                    value: true,
                                    groupvalue: radioValue1,
                                    onChange: (currentValue) => setState(
                                        () => radioValue1 = currentValue),
                                    text: 'Plakam Var'),
                                RadioText<bool>(
                                    value: false,
                                    groupvalue: radioValue1,
                                    onChange: (currentValue) => setState(
                                        () => radioValue1 = currentValue),
                                    text: 'Plakam Yok'),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 15),
                                TextInputWithLeading(
                                    label: 'Ruhsat sahibi TC kimlik numaras??',
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
                                    label: 'Telefon Numaran??z',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    Leadinglabel: '+90',
                                    LeadingTextColor: Raisin_Black,
                                    LeadingColor: Unseleted),
                                SizedBox(height: 25),
                                SolidButton(
                                  text: 'TEKLIF AL',
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
                                '02. Sigortal?? Bilgileri',
                                style: V20Sb,
                              ),
                              Spacer(),
                              if (currentpage > 2)
                                IconButtonRoundedRactangle(
                                  buttonColor: Colors.white,
                                  onPress: () {
                                    setState(() {
                                      isEdit = false;
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
                            label: 'Ad??n??z (Opsiyonel)',
                            TextColor: Raisin_Black,
                            labelColor: Grey,
                          ),
                          SizedBox(height: 25),
                          CustomTextInput(
                            label: 'Soyad??n??z (Opsiyonel)',
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
                                                child: Text('??l'),
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
                                                child: Text('??l??e'),
                                              ),

                                            ],
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          SizedBox(height: 25),
                          CustomTextInput(
                            label: 'Do??um Tarihi',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
                          Divider(
                            indent: 0,
                            endIndent: 0,
                          ),
                          SizedBox(height: 25),
                          Text(
                            '03. Ruhsat & Ara?? Bilgileri',
                            style: V20Sb,
                          ),
                        ],
                      ),
                      if (currentpage == 3)
                        Column(
                          children: [
                            SizedBox(height: 15),
                            Text(
                                'Ruhsat Belge Seri Numaran??z?? Biliyor musunuz?',
                                style: V16L),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                RadioText<bool>(
                                    value: true,
                                    groupvalue: radioValue3,
                                    onChange: (currentValue) => setState(
                                        () => radioValue3 = currentValue),
                                    text: 'Evet Biliyorum'),
                                RadioText<bool>(
                                    value: false,
                                    groupvalue: radioValue3,
                                    onChange: (currentValue) => setState(
                                        () => radioValue3 = currentValue),
                                    text: 'Hay??r Bilmiyorum'),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InfoBox(
                                            text:
                                                'Emniyet Genel M??d??rl?????????nde kay??tl?? ara?? bilgileriniz, a??a????dad??r, l??tfen do??rulu??unu kontrol edin',
                                            height: 94),
                                        SizedBox(height: 35),
                                        DualTextColumn(
                                            text1: 'Ruhsat Tescil Tarihi',
                                            text2: '21.01.2021'),
                                        SizedBox(height: 25),
                                        DualTextColumn(
                                            text1:
                                                'Kullan??m Tarz?? Tescil Tarihi',
                                            text2: 'Otomobil'),
                                        SizedBox(height: 25),
                                        DualTextColumn(
                                            text1: 'Marka', text2: 'Peugeot'),
                                        SizedBox(height: 25),
                                        DualTextColumn(
                                            text1: 'Plaka',
                                            text2: '34 BFP 555'),
                                        SizedBox(height: 25),
                                        DualTextColumn(
                                            text1: 'Model Y??l??', text2: '2018'),
                                        SizedBox(height: 25),
                                        DualTextColumn(
                                            text1: 'Model',
                                            text2:
                                                '308 Allure Sport 1.2 Puretech 130 S&S EAT8'),
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
                                              image: AssetImage(
                                                  'lib/presentation/Assets/Assets_Common/edit_icon.png'),
                                            ),
                                            SizedBox(width: 15),
                                            InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    isEdit = true;
                                                  });
                                                },
                                                child: Text('D??zenle',
                                                    style: B18Sb)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  //Edit
                                  if (isEdit == true)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InfoBox(
                                            text:
                                                'Ara?? bilgisi bulunamad??, l??tfen ara?? bilgisini giriniz.',
                                            height: 76),
                                        SizedBox(height: 35),
                                        Text('Ruhsat Tescil Tarihi',
                                            style: V16Sb),
                                        SizedBox(height: 35),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: CustomTextInput(
                                                label: 'G??n Se??',
                                                TextColor: Raisin_Black,
                                                labelColor: Grey,
                                                icon: Icons.keyboard_arrow_down,
                                              ),
                                            ),
                                            SizedBox(width: 15),
                                            Expanded(
                                              child: CustomTextInput(
                                                label: 'Ay Se??',
                                                TextColor: Raisin_Black,
                                                labelColor: Grey,
                                                icon: Icons.keyboard_arrow_down,
                                              ),
                                            ),
                                            SizedBox(width: 15),
                                            Expanded(
                                              child: CustomTextInput(
                                                label: 'Y??l Se??',
                                                TextColor: Raisin_Black,
                                                labelColor: Grey,
                                                icon: Icons.keyboard_arrow_down,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 25),
                                        CustomTextInput(
                                          label: 'Kullan??m Tarz??',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                        SizedBox(height: 25),
                                        CustomTextInput(
                                          label: 'Kullan??m ??ekli',
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
                                          label: 'Model Y??l??',
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
                            if (radioValue3 == false)
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  CustomTextInput(
                                    label: 'E-Posta',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                  ),
                                ],
                              ),
                            SizedBox(height: 35),
                            SolidButton(
                              text: 'DEVAM ET',
                              onPress: () {
                                setState(() {
                                  isEdit = false;
                                  Navigator.of(context)
                                      .pushNamed(TrafikViewOffers.routname);
                                });
                              },
                              shadow: Low_Shadow,
                              gradient: Blue_Gradient_2,
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
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
