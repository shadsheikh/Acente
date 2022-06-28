import 'package:acente/presentation/Screens/Dask_Sigortasi/Dask_View_Offers.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DaskEnterInfo extends StatefulWidget {
  static const String routname = '/dask_enter_info';

  @override
  _DaskEnterInfoState createState() => _DaskEnterInfoState();
}

class _DaskEnterInfoState extends State<DaskEnterInfo> {
  bool? radioValue1;
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
                  Text('Dask Sigortası', style: V28R),
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
                            Column(
                              children: [
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    RadioText<bool>(
                                        value: true,
                                        groupvalue: radioValue1,
                                        onChange: (currentValue) => setState(
                                            () => radioValue1 = currentValue),
                                        text:
                                            'Yeni poliçe yaptırmak istiyorum'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RadioText<bool>(
                                        value: false,
                                        groupvalue: radioValue1,
                                        onChange: (currentValue) => setState(
                                            () => radioValue1 = currentValue),
                                        text:
                                            'Mevcut poliçemi yenilemek istiyorum'),
                                  ],
                                ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  SizedBox(height: 15),
                                  Text('Eski Dask Poliçe Numaranız',
                                      style: V16R),
                                  SizedBox(height: 25),
                                  CustomTextInput(
                                    label: '8 haneli dask poliçe numaranız',
                                    TextColor: Raisin_Black,
                                    labelColor: Grey,
                                  ),
                                  SizedBox(height: 25),
                                  Text('Eski Dask Poliçe Numaranız',
                                      style: B18R),
                                  SizedBox(height: 35),
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
                                '03. Adres Seçimi',
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
                              SizedBox(height: 25),
                              InfoBox(
                                  text:
                                      'Ulusal Adres Veri Tabanında kayıt adresiniz',
                                  height: 76),
                              SizedBox(height: 35),
                              Text('Bu******* Mh. Me****** Sk. No. 12 Da.7\nÜ******* İstanbul',style: V16Sb),
                              SizedBox(height: 25),
                              Column(
                              children: [
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    RadioText<bool>(
                                        value: true,
                                        groupvalue: radioValue1,
                                        onChange: (currentValue) => setState(
                                            () => radioValue1 = currentValue),
                                        text:
                                            'İkamet adresim ile devam et'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RadioText<bool>(
                                        value: false,
                                        groupvalue: radioValue1,
                                        onChange: (currentValue) => setState(
                                            () => radioValue1 = currentValue),
                                        text:
                                            'Adres Seçimi Yaparak ( il, ilçe, belde vb.)'),
                                  ],
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
                                    child:  DropdownButton<String>(

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
                                              //getAvenuestreet();
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
                                label: 'Kapı No',
                                TextColor: Raisin_Black,
                                labelColor: Grey,
                                icon: Icons.keyboard_arrow_down,
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
                            '04. Konut Bilgileri',
                            style: V20Sb,
                          ),
                        ],
                      ),
                      if (currentpage == 4)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Row(
                                children: [
                                  Expanded(
                                    child: CustomTextInput(
                                      label: 'Dairenin brüt m2',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      icon: Icons.keyboard_arrow_down,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: CustomTextInput(
                                      label: 'Binanın Yapı Tarzı',
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
                                      label: 'Dairenin Kullanım Şekli',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      icon: Icons.keyboard_arrow_down,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: CustomTextInput(
                                      label: 'İnşaat Yılı',
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
                                      label: 'Binadaki Top. Kat Say.',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      icon: Icons.keyboard_arrow_down,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: CustomTextInput(
                                      label: 'Bulunduğu Kat',
                                      TextColor: Raisin_Black,
                                      labelColor: Grey,
                                      icon: Icons.keyboard_arrow_down,
                                    ),
                                  ),
                                ],
                              ),
                            SizedBox(height: 25),
                            Text('Rehinli Alacak Var mı?',style: V16L),
                            SizedBox(height: 15),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    RadioText<bool>(
                                        value: true,
                                        groupvalue: radioValue3,
                                        onChange: (currentValue) => setState(
                                            () => radioValue3 = currentValue),
                                        text: 'Evet Var'),
                                    RadioText<bool>(
                                        value: false,
                                        groupvalue: radioValue3,
                                        onChange: (currentValue) => setState(
                                            () => radioValue3 = currentValue),
                                        text: 'Hayır Yok'),
                                  ],
                                ),
                                
                              ],
                            ),
                            if (radioValue3 == true)
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Kurum Seçiniz',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Expanded(
                                        child: CustomTextInput(
                                          label: 'Şube Seçiniz',
                                          TextColor: Raisin_Black,
                                          labelColor: Grey,
                                          icon: Icons.keyboard_arrow_down,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            SizedBox(height: 25),
                            SolidButton(
                              text: 'DEVAM ET',
                              onPress: () {
                                Navigator.of(context)
                                    .pushNamed(DaskViewOffers.routname);
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
