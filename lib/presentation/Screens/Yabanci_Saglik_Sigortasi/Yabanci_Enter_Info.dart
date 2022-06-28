import 'package:acente/presentation/Screens/Yabanci_Saglik_Sigortasi/Yabanci_View_Offers.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YabanciEnterInfo extends StatefulWidget {
  static const String routname = '/yabanci_enter_info';

  @override
  _YabanciEnterInfoState createState() => _YabanciEnterInfoState();
}

class _YabanciEnterInfoState extends State<YabanciEnterInfo> {
  int currentpage = 1;
  bool isSelected = true;

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
                  Text('Yabancı Sağlık Sig.', style: V28R),
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
                                '01. Kişisel Bilgiler',
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
                            CustomTextInput(
                              label: 'Aracınızın Plaka İli',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Aracınızın Plaka İli',
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
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Pasaport / kimlik No',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Poliçe Başlangıç Tarihi',
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
                                    label: 'Anne Adı',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Baba Adı',
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
                            CustomTextInput(
                              label: 'Uyruk',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                            SizedBox(height: 25),
                            InfoBox(
                                text:
                                    '18 yaşından küçüksünüz, lütfen ebeveyn bilgilerinizi girip öyle devam edin.',
                                height: 76),
                            SizedBox(height: 35),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Pasaport / kimlik No',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Poliçe Başlangıç Tarihi',
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
                                    label: 'Anne Adı',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Baba Adı',
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
                                  image: AssetImage(
                                      'lib/presentation/Assets/Assets_Common/edit_icon.png'),
                                )
                            ],
                          ),
                        ],
                      ),
                      if (currentpage == 3)
                        Column(
                          children: [
                            SizedBox(height: 15),
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
                                                child: Text('Belde'),
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
                                                child: Text('Mahalle'),
                                              ),

                                            ],
                                          ),
                                  ),
                                ),
                              ],
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
                                                child: Text('Cadde/Sokak'),
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
                                    child:DropdownButton<String>(
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
                                                child: Text('Bina No'),
                                              ),

                                            ],
                                          ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            CustomTextInput(
                              label: 'Kapi No',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                            SizedBox(height: 25),
                            SolidButton(
                              text: 'DEVAM ET',
                              onPress: () {
                                Navigator.of(context)
                                    .pushNamed(YabanciViewOffers.routname);
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
