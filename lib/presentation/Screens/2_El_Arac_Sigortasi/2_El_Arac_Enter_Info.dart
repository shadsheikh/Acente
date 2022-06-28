import 'package:acente/presentation/Screens/2_El_Arac_Sigortasi/2_El_Arac_View_Offers.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoElAracEnterInfo extends StatefulWidget {
  static const String routname = '/two_el_arac_enter_info';

  @override
  _TwoElAracEnterInfoState createState() => _TwoElAracEnterInfoState();
}

class _TwoElAracEnterInfoState extends State<TwoElAracEnterInfo> {
  bool? radioValue1 = true;
  bool? checkboxValue = false;

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
                  Text('2. El Araç Sig.', style: V28R),
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
                      SizedBox(height: 15),
                      Divider(
                        indent: 0,
                        endIndent: 0,
                      ),
                      SizedBox(height: 25),
                      Text(
                        '2. El Araç Sigortası',
                        style: V20Sb,
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          Row(
                            children: [
                              RadioText<bool>(
                                  value: true,
                                  groupvalue: radioValue1,
                                  onChange: (currentValue) => setState(
                                      () => radioValue1 = currentValue),
                                  text: 'Hususi Otomobil'),
                            ],
                          ),
                          Row(
                            children: [
                              RadioText<bool>(
                                  value: false,
                                  groupvalue: radioValue1,
                                  onChange: (currentValue) => setState(
                                      () => radioValue1 = currentValue),
                                  text: 'Kapalı Kasa Kamyonet'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        'SATICI BİLGİLERİ',
                        style: G10R,
                      ),
                      SizedBox(height: 35),
                      TextInputWithLeading(
                          label: 'Satıcı TC Kimlik No',
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
                      TextInputWithLeading(
                          label: 'Satıcı E-posta',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                          Leadinglabel: '@',
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
                          label: 'Ruhsat',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                          Leadinglabel: 'RST',
                          LeadingTextColor: Raisin_Black,
                          LeadingColor: Unseleted),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Expanded(
                            child: TextInputWithLeading(
                                label: 'Kilometre',
                                TextColor: Raisin_Black,
                                labelColor: Grey,
                                Leadinglabel: 'KM',
                                LeadingTextColor: Colors.white,
                                LeadingColor: Quaternary),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: CustomTextInput(
                              label: 'Silindir Hacmi',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Text(
                        'ALICI BİLGİLERİ',
                        style: G10R,
                      ),
                      SizedBox(height: 35),
                      TextInputWithLeading(
                          label: 'Alıcı TC Kimlik No',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                          Leadinglabel: 'T.C.',
                          LeadingTextColor: Raisin_Black,
                          LeadingColor: Unseleted),
                      SizedBox(height: 25),
                      TextInputWithLeading(
                          label: 'Alıcı Cep Telefonu',
                          TextColor: Raisin_Black,
                          labelColor: Grey,
                          Leadinglabel: '+90',
                          LeadingTextColor: Raisin_Black,
                          LeadingColor: Unseleted),
                      SizedBox(height: 25),
                      CustomTextInput(
                        label: 'Satış Tarihi',
                        TextColor: Raisin_Black,
                        labelColor: Grey,
                        icon: Icons.keyboard_arrow_down,
                      ),
                      SizedBox(height: 35),
                      Text(
                        'ALICI BİLGİLERİ',
                        style: G10R,
                      ),
                      SizedBox(height: 35),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextInput(
                              label: 'Araç Model Yılı',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: CustomTextInput(
                              label: 'Araç Markası',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      CustomTextInput(
                        label: 'Araç Modeli',
                        TextColor: Raisin_Black,
                        labelColor: Grey,
                        icon: Icons.keyboard_arrow_down,
                      ),
                      SizedBox(height: 25),
                      SolidButton(
                        text: 'Araç Sorgula',
                        onPress: () {},
                        shadow: Low_Shadow,
                        gradient: Red_Gradient,
                        padding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      SizedBox(height: 35),
                      Text(
                        'ARAÇ BİLGİLERİ',
                        style: G10R,
                      ),
                      SizedBox(height: 35),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextInput(
                              label: 'Başlangıç Tarihi',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: CustomTextInput(
                              label: 'Poliçe Süresi',
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
                              label: 'TSE Belge No',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: CustomTextInput(
                              label: 'Ekspertiz Rapor No',
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
                              label: 'Ekspertiz Tarihi',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: CustomTextInput(
                              label: 'Yakıt Tipi',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Ekspertiz Raporu Yükle',
                        style: RB16R,
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          IconTextButton(
                            text: 'Yükle',
                            buttonColor: Colors.white,
                            onPress: () {},
                            shadow: Blue_Low_Shadow,
                            color: Raisin_Black,
                            icon: Icons.drive_folder_upload_outlined,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Not',
                        style: RB16R,
                      ),
                      SizedBox(height: 15),
                      CustomTextInput(
                        label: 'Not Yazınız',
                        TextColor: Raisin_Black,
                        labelColor: Grey,
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextInput(
                              label: 'Vites Tipi',
                              TextColor: Raisin_Black,
                              labelColor: Grey,
                              icon: Icons.keyboard_arrow_down,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: CustomTextInput(
                              label: 'Çekiş Tipi',
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
                          Checkbox(
                            value: checkboxValue,
                            activeColor: Melachite,
                            onChanged: (currentValue) {
                              setState(() {
                                checkboxValue = currentValue;
                              });
                            },
                          ),
                          SizedBox(width: 12),
                          Flexible(
                            child: Text(
                                'Gizlilik Politikası ve kullanıcı sözleşmesi aydınlatma metni, Yenilikler ve kampanyala hakkında e-bülten ve sms almak istiyorum',
                                style: V12R),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      SolidButton(
                        text: 'DEVAM ET',
                        onPress: () {
                          Navigator.of(context)
                              .pushNamed(TwoElAracViewOffers.routname);
                        },
                        shadow: Low_Shadow,
                        gradient: Blue_Gradient_2,
                      ),
                      SizedBox(height: 15),
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
