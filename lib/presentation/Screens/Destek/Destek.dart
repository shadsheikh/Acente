import 'package:acente/presentation/Screens/Destek/Hasar_Talebi_Gonder.dart';
import 'package:acente/presentation/Screens/Destek/Kasko_Degeri_Sorgula.dart';
import 'package:acente/presentation/Screens/Destek/Sikca_Sorulan_Sorular.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

import 'Subelerimiz.dart';

class Destek extends StatefulWidget {
  static const String routname = '/destek';
  @override
  _DestekState createState() => _DestekState();
}

class _DestekState extends State<Destek> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: Grey_Gradient_Rev,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 17),
                child: Row(
                  children: [
                    Image.asset('lib/presentation/Assets/Assets_Destek/Logo.png',width: 160),
                    Spacer(),
                    BorderButton(text: 'S.SOYLU', color: Ternary, onPress: (){}, shadow: Red_High_Shadow,padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),fontSize: 12,),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text('Destek',style: V40R),
                    Spacer(),
                    IconTextButton(text: 'ARA', buttonColor: Violet, onPress: (){}, shadow: Low_Shadow, color: Colors.white,icon: Icons.phone,padding: EdgeInsets.symmetric(horizontal: 15,vertical: 14),)
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                height: 175,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(image: AssetImage('lib/presentation/Assets/Assets_Destek/hands.png'),
                    fit: BoxFit.fill
                ),
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 28),
                        Text('7/24 Uzmanından Destek',style: W12R),
                        SizedBox(height: 10),
                        Text('850 433 0850',style: W18R),
                        SizedBox(height: 22),
                        Container(
                          height: 47,
                          width: MediaQuery.of(context).size.width-40,
                          decoration: BoxDecoration(
                              color: Quaternary.withOpacity(0.70),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone,color: Colors.white,),
                              SizedBox(width: 10),
                              Text('BIZ SIZI ARAYALIM',style: W12L),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextAndIcon(title: 'Sözleşmeler', icon: Icons.add),
                    TextAndIcon(title: 'KVKK Hakkında Bilgilendirme', icon: Icons.arrow_forward),
                    TextAndIcon(title: 'Açık Rıza Metni', icon: Icons.arrow_forward),
                    TextAndIcon(title: 'Gizlilik, Kullanım Koşulları ve\nKullanıcı Sözleşmesi', icon: Icons.arrow_forward),
                    TextAndIcon(title: 'Şubelerimiz', icon: Icons.arrow_forward, onTap: (){Navigator.of(context).pushNamed(Subelerimiz.routname);},),
                    TextAndIcon(title: 'Hasar Talebi Gönder', icon: Icons.arrow_forward,onTap: (){Navigator.of(context).pushNamed(HasarTalebiGonder.routname);},),
                    TextAndIcon(title: 'Mobil kaza tutanağı', icon: Icons.arrow_forward),
                    TextAndIcon(title: 'Kasko Değeri sorgula', icon: Icons.arrow_forward,onTap: (){Navigator.of(context).pushNamed(KaskoDegeriSorgula.routname);}),
                    TextAndIcon(title: 'Sıkça Sorulan Sorular', icon: Icons.arrow_forward,onTap: (){Navigator.of(context).pushNamed(SikcaSorulanSorular.routname);}),
                  ],
                ),
              ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}


