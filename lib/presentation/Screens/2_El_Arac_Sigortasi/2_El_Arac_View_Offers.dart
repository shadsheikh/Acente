import 'package:acente/presentation/Screens/2_El_Arac_Sigortasi/2_El_Arac_Request_Successful.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:acente/presentation/utils/constants.dart';

class TwoElAracViewOffers extends StatefulWidget {
  static const String routname = '/two_el_arac_view_offers';
  @override
  _TwoElAracViewOffersState createState() => _TwoElAracViewOffersState();
}

class _TwoElAracViewOffersState extends State<TwoElAracViewOffers> {
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
                Text('2. El Araç Sig.', style: V28R),
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
                      onButtonTap: () {
                        Navigator.of(context)
                            .pushNamed(TwoElAracRequestSuccessful.routname);
                      },
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
                      onButtonTap: () {
                        Navigator.of(context)
                            .pushNamed(TwoElAracRequestSuccessful.routname);
                      },
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
