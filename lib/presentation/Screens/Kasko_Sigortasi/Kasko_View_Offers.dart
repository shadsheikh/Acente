import 'package:acente/presentation/Screens/Kasko_Sigortasi/Kasko_Request_Successful.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class KaskoViewOffers extends StatefulWidget {
  static const String routname = '/kasko_view_offers';
  @override
  _KaskoViewOffersState createState() => _KaskoViewOffersState();
}

class _KaskoViewOffersState extends State<KaskoViewOffers> {
  bool switchValue = false;
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
            ThreeStep(step1: true, step2: true, step3: false),
            SizedBox(height: 15),
            Center(child: Text('Teklifleri incele', style: B18R)),
            SizedBox(height: 40),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InsuranceQuotes(),
                    SizedBox(height: 25),
                    InnerShadowDropdown(title: 'Tüm Paketler (18)'),
                    SizedBox(height: 25),
                    ViewOffersItem(
                      title: 'Kasko Sigortası',
                      subtitle: 'Standart Teminatlı Ürün',
                      insurance: 'AXA Sigorta',
                      installment: '412,15 TL X 3 Taksit',
                      subinstallment: 'S1.311,25 TL',
                      onButtonTap: () {Navigator.of(context)
                                    .pushNamed(KaskoRequestSuccessful.routname);},
                      onChange: (val) {
                        setState(() {
                          switchValue = val;
                        });
                      },
                      switchvalue: this.switchValue,
                      bordercolor: Blue,
                      headerVisible: true,
                      shadow: Green_Low_Shadow,
                    ),
                    SizedBox(height: 35),
                    ViewOffersItem(
                      title: 'Kasko Sigortası',
                      subtitle: 'Standart Teminatlı Ürün',
                      insurance: 'AXA Sigorta',
                      installment: '412,15 TL X 3 Taksit',
                      subinstallment: 'S1.311,25 TL',
                      onButtonTap: () {Navigator.of(context)
                                    .pushNamed(KaskoRequestSuccessful.routname);},
                      onChange: (val) {
                        setState(() {
                          switchValue = val;
                        });
                      },
                      switchvalue: this.switchValue,
                      bordercolor: Color(0xFFe4e7ec),
                      isBorder: true,
                      shadow: Green_Low_Shadow,
                    ),
                    SizedBox(height: 35),
                    InsuranceInformation(),
                    SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
