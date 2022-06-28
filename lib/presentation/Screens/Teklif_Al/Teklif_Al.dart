import 'package:acente/presentation/Screens/2_El_Arac_Sigortasi/2_El_Arac_Sigortasi.dart';
import 'package:acente/presentation/Screens/Bireysel_Saglik_Sigortasi/Bireysel_Saglik_Sigortasi.dart';
import 'package:acente/presentation/Screens/Cep_Telefonu_Sigortasi/Cep_Telefonu_Sigortasi.dart';
import 'package:acente/presentation/Screens/Dask_Sigortasi/Dask_Sigortasi.dart';
import 'package:acente/presentation/Screens/Evcil_Hayvan_Sigortasi/Evcil_Hayvan_Sigortasi.dart';
import 'package:acente/presentation/Screens/Kasko_Sigortasi/Kasko_Sigortasi.dart';
import 'package:acente/presentation/Screens/Konut_Sigortasi/Konut_Sigortasi.dart';
import 'package:acente/presentation/Screens/Seyahat_Saglik_Sigortasi/Seyahat_Saglik_Sigortasi.dart';
import 'package:acente/presentation/Screens/Tamamlayici_Saglik_Sigortasi/Tamamlayici_Saglik_Sigortasi.dart';
import 'package:acente/presentation/Screens/Yabanci_Saglik_Sigortasi/Yabanci_Saglik_Sigortasi.dart';
import 'package:acente/presentation/Screens/Zorunlu_Trafik_Sigortas%C4%B1/Trafik_Sigortas%C4%B1.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class TeklifAI extends StatefulWidget {
  static const String routname = '/teklif_ai';
  @override
  _TeklifAIState createState() => _TeklifAIState();
}

class _TeklifAIState extends State<TeklifAI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          decoration: BoxDecoration(
            gradient: Grey_Gradient_Rev,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Teklif Al', style: V40R),
                  Spacer(),
                  BorderButton(
                    text: 'S.SOYLU',
                    color: Ternary,
                    onPress: () {},
                    shadow: Red_High_Shadow,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    fontSize: 12,
                  ),
                ],
              ),
              SizedBox(height: 35),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TeklifListContent(
                          title: 'Kasko',
                          image: 'kasko.png',
                          onTap: () {Navigator.of(context).pushNamed(KaskoSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: 'Z. Trafik Sigortası',
                          image: 'z_trafik_sigortasi.png',
                          onTap: () {Navigator.of(context).pushNamed(TrafikSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: 'DASK',
                          image: 'dask.png',
                          onTap: () {Navigator.of(context).pushNamed(DaskSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: 'Konut Sigortası',
                          image: 'konut_sigortasi.png',
                          onTap: () {Navigator.of(context).pushNamed(KonutSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: 'T. Sağlık Sigortası',
                          image: 't_saglik_sigortasi.png',
                          onTap: () {Navigator.of(context).pushNamed(TamamlayiciSaglikSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: 'Bireysel Sağlık Sig.',
                          image: 'bireysel_saglik_sig.png',
                          onTap: () {Navigator.of(context).pushNamed(BireyselSaglikSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: 'Yabancı Sağlık Sig.',
                          image: 'yabanci_saglik_sig.png',
                          onTap: () {Navigator.of(context).pushNamed(YabanciSaglikSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: 'Seyahat Sağlık Sig.',
                          image: 'seyahat_saglik_sig.png',
                          onTap: () {Navigator.of(context).pushNamed(SeyahatSaglikSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: 'Evcil Hayvan Sig.',
                          image: 'evcil_hayvan_sig.png',
                          onTap: () {Navigator.of(context).pushNamed(EvcilHayvanSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: '2. El Garanti Sig.',
                          image: '2_el_garanti_sig.png',
                          onTap: () {Navigator.of(context).pushNamed(TwoElAracSigortasi.routname);}),
                      SizedBox(height: 25),
                      TeklifListContent(
                          title: 'Cep Telefon Sigortası',
                          image: 'cep_telefon_sigortasi.png',
                          onTap: () {Navigator.of(context).pushNamed(CepTelefonuSigortasi.routname);}),
                      SizedBox(height: 80),
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
