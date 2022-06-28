import 'package:acente/presentation/Screens/2_El_Arac_Sigortasi/2_El_Arac_Enter_Info.dart';
import 'package:acente/presentation/Screens/2_El_Arac_Sigortasi/2_El_Arac_Request_Successful.dart';
import 'package:acente/presentation/Screens/2_El_Arac_Sigortasi/2_El_Arac_Sigortasi.dart';
import 'package:acente/presentation/Screens/2_El_Arac_Sigortasi/2_El_Arac_View_Offers.dart';
import 'package:acente/presentation/Screens/After_Login/Saglik.dart';
import 'package:acente/presentation/Screens/Bireysel_Saglik_Sigortasi/Bireysel_Enter_Info.dart';
import 'package:acente/presentation/Screens/Bireysel_Saglik_Sigortasi/Bireysel_Request_Successful.dart';
import 'package:acente/presentation/Screens/Bireysel_Saglik_Sigortasi/Bireysel_Saglik_Sigortasi.dart';
import 'package:acente/presentation/Screens/Cep_Telefonu_Sigortasi/Cep_Telefonu_Enter_Info.dart';
import 'package:acente/presentation/Screens/Cep_Telefonu_Sigortasi/Cep_Telefonu_Request_Successful.dart';
import 'package:acente/presentation/Screens/Cep_Telefonu_Sigortasi/Cep_Telefonu_Sigortasi.dart';
import 'package:acente/presentation/Screens/Dask_Sigortasi/Dask_Enter_Info.dart';
import 'package:acente/presentation/Screens/Dask_Sigortasi/Dask_Payment_Process.dart';
import 'package:acente/presentation/Screens/Dask_Sigortasi/Dask_Request_Successful.dart';
import 'package:acente/presentation/Screens/Dask_Sigortasi/Dask_Sigortasi.dart';
import 'package:acente/presentation/Screens/Dask_Sigortasi/Dask_View_Offers.dart';
import 'package:acente/presentation/Screens/Evcil_Hayvan_Sigortasi/Evcil_Hayvan_Enter_Info.dart';
import 'package:acente/presentation/Screens/Evcil_Hayvan_Sigortasi/Evcil_Hayvan_Request_Successful.dart';
import 'package:acente/presentation/Screens/Evcil_Hayvan_Sigortasi/Evcil_Hayvan_Sigortasi.dart';
import 'package:acente/presentation/Screens/Hesabim/Ayarlar.dart';
import 'package:acente/presentation/Screens/Hesabim/Dil_Sec.dart';
import 'package:acente/presentation/Screens/Hesabim/Hesabim.dart';
import 'package:acente/presentation/Screens/Hesabim/Sifre_Degistir.dart';
import 'package:acente/presentation/Screens/Home/Anasayfa_No_Login.dart';
import 'package:acente/presentation/Screens/Home/Home_Bottom_Tabs.dart';
import 'package:acente/presentation/Screens/If_Not_Logged_In/Policelerim_Not_Logged_In.dart';
import 'package:acente/presentation/Screens/Kasko_Sigortasi/Kasko_Enter_Info.dart';
import 'package:acente/presentation/Screens/Kasko_Sigortasi/Kasko_Request_Successful.dart';
import 'package:acente/presentation/Screens/Kasko_Sigortasi/Kasko_View_Offers.dart';
import 'package:acente/presentation/Screens/Konut_Sigortasi/Konut_Enter_Info.dart';
import 'package:acente/presentation/Screens/Konut_Sigortasi/Konut_Sigortasi.dart';
import 'package:acente/presentation/Screens/Konut_Sigortasi/Konut_View_Offers.dart';
import 'package:acente/presentation/Screens/Login_and_Register/Sifremi_Unuttum.dart';
import 'package:acente/presentation/Screens/Policelerim/Policelerim.dart';
import 'package:acente/presentation/Screens/Seyahat_Saglik_Sigortasi/Seyahat_Enter_Info.dart';
import 'package:acente/presentation/Screens/Seyahat_Saglik_Sigortasi/Seyahat_Saglik_Sigortasi.dart';
import 'package:acente/presentation/Screens/Seyahat_Saglik_Sigortasi/Seyahat_View_Offers.dart';
import 'package:acente/presentation/Screens/Start_Screens/Splash_Screens.dart';
import 'package:acente/presentation/Screens/Tamamlayici_Saglik_Sigortasi/Tamamlayici_Enter_Info.dart';
import 'package:acente/presentation/Screens/Tamamlayici_Saglik_Sigortasi/Tamamlayici_Request_Successful.dart';
import 'package:acente/presentation/Screens/Tamamlayici_Saglik_Sigortasi/Tamamlayici_Saglik_Sigortasi.dart';
import 'package:acente/presentation/Screens/Tamamlayici_Saglik_Sigortasi/Tamamlayici_View_Offers.dart';
import 'package:acente/presentation/Screens/Yabanci_Saglik_Sigortasi/Yabanci_Enter_Info.dart';
import 'package:acente/presentation/Screens/Yabanci_Saglik_Sigortasi/Yabanci_Saglik_Sigortasi.dart';
import 'package:acente/presentation/Screens/Yabanci_Saglik_Sigortasi/Yabanci_View_Offers.dart';
import 'package:flutter/material.dart';
import 'presentation/Screens/After_Login/Anasayfa_Logged_In.dart';
import 'presentation/Screens/After_Login/Uretim.dart';
import 'presentation/Screens/Destek/Destek.dart';
import 'presentation/Screens/Destek/Hasar_Talebi_Gonder.dart';
import 'presentation/Screens/Destek/Kasko_Degeri_Sorgula.dart';
import 'presentation/Screens/Destek/Sikca_Sorulan_Sorular.dart';
import 'presentation/Screens/Destek/Subelerimiz.dart';
import 'presentation/Screens/Destek/QR_ile_tanımla.dart';
import 'presentation/Screens/Home/Acente365_Detay.dart';
import 'presentation/Screens/If_Not_Logged_In/Hesabim_Not_Logged_In.dart';
import 'presentation/Screens/Kasko_Sigortasi/Kasko_Sigortasi.dart';
import 'presentation/Screens/Login_and_Register/Giris_Yap.dart';
import 'presentation/Screens/Login_and_Register/Uye_Ol.dart';
import 'presentation/Screens/Start_Screens/Dil_Secimi.dart';
import 'presentation/Screens/Start_Screens/acente_loading_screen.dart';
import 'presentation/Screens/After_Login/Yenilemelerim.dart';
import 'presentation/Screens/Teklif_Al/Teklif_Al.dart';
import 'presentation/Screens/Zorunlu_Trafik_Sigortası/Trafik_Enter_Info.dart';
import 'presentation/Screens/Zorunlu_Trafik_Sigortası/Trafik_Sigortası.dart';
import 'presentation/Screens/Zorunlu_Trafik_Sigortası/Trafik_View_Offers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'BAHNSCHRIFT',
          primarySwatch: Colors.blue,
        ),
        initialRoute: AcenteLoadingScreen.routeName,
        routes: <String, Widget Function(BuildContext context)>{
          AcenteLoadingScreen.routeName: (_) => AcenteLoadingScreen(),
          DilSecimi.routname: (_) => DilSecimi(),
          SplashScreens.routeName: (_) => SplashScreens(),
          AnasayfaNoLogin.routname: (_) => AnasayfaNoLogin(),
          HomeBottomTabs.routname: (_) => HomeBottomTabs(),
          Acente365Detay.routname: (_) => Acente365Detay(),
          HesabimNotLoggedIn.routname: (_) => HesabimNotLoggedIn(),
          PolicelerimNotLoggedIn.routname: (_) => PolicelerimNotLoggedIn(),
          SifremiUnuttum.routname: (_) => SifremiUnuttum(),
          GirisYap.routname: (_) => GirisYap(),
          UyeOI.routname: (_) => UyeOI(),
          AnasayfaLoggedIn.routname: (_) => AnasayfaLoggedIn(),
          Yenilemelerim.routname: (_) => Yenilemelerim(),
          Saglik.routname: (_) => Saglik(),
          Uretim.routname: (_) => Uretim(),
          Destek.routname: (_) => Destek(),
          Subelerimiz.routname: (_) => Subelerimiz(),
          HasarTalebiGonder.routname: (_) => HasarTalebiGonder(),
          QRIleTanimla.routname: (_) => QRIleTanimla(),
          KaskoDegeriSorgula.routname: (_) => KaskoDegeriSorgula(),
          SikcaSorulanSorular.routname: (_) => SikcaSorulanSorular(),
          TeklifAI.routname: (_) => TeklifAI(),
          KaskoSigortasi.routname: (_) => KaskoSigortasi(),
          KaskoEnterInfo.routname: (_) => KaskoEnterInfo(),
          KaskoRequestSuccessful.routname: (_) => KaskoRequestSuccessful(),
          KaskoViewOffers.routname: (_) => KaskoViewOffers(),
          TrafikSigortasi.routname: (_) => TrafikSigortasi(),
          TrafikEnterInfo.routname: (_) => TrafikEnterInfo(),
          TrafikViewOffers.routname: (_) => TrafikViewOffers(),
          DaskSigortasi.routname: (_) => DaskSigortasi(),
          DaskEnterInfo.routname: (_) => DaskEnterInfo(),
          DaskViewOffers.routname: (_) => DaskViewOffers(),
          DaskRequestSuccessful.routname: (_) => DaskRequestSuccessful(),
          TamamlayiciSaglikSigortasi.routname: (_) =>TamamlayiciSaglikSigortasi(),
          TamamlayiciEnterInfo.routname: (_) => TamamlayiciEnterInfo(),
          TamamlayiciRequestSuccessful.routname: (_) =>TamamlayiciRequestSuccessful(),
          TamamlayiciViewOffers.routname: (_) => TamamlayiciViewOffers(),
          YabanciSaglikSigortasi.routname: (_) => YabanciSaglikSigortasi(),
          YabanciEnterInfo.routname: (_) => YabanciEnterInfo(),
          YabanciViewOffers.routname: (_) => YabanciViewOffers(),
          SeyahatSaglikSigortasi.routname: (_) => SeyahatSaglikSigortasi(),
          SeyahatEnterInfo.routname: (_) => SeyahatEnterInfo(),
          SeyahatViewOffers.routname: (_) => SeyahatViewOffers(),
          TwoElAracSigortasi.routname: (_) => TwoElAracSigortasi(),
          TwoElAracEnterInfo.routname: (_) => TwoElAracEnterInfo(),
          TwoElAracViewOffers.routname: (_) => TwoElAracViewOffers(),
          TwoElAracRequestSuccessful.routname: (_) =>TwoElAracRequestSuccessful(),
          KonutSigortasi.routname: (_) => KonutSigortasi(),
          KonutEnterInfo.routname: (_) => KonutEnterInfo(),
          KonutViewOffers.routname: (_) => KonutViewOffers(),
          BireyselSaglikSigortasi.routname: (_) => BireyselSaglikSigortasi(),
          BireyselEnterInfo.routname: (_) => BireyselEnterInfo(),
          BireyselRequestSuccessful.routname: (_) =>BireyselRequestSuccessful(),
          CepTelefonuSigortasi.routname: (_) => CepTelefonuSigortasi(),
          CepTelefonuEnterInfo.routname: (_) => CepTelefonuEnterInfo(),
          CepTelefonuRequestSuccessful.routname: (_) =>CepTelefonuRequestSuccessful(),
          EvcilHayvanSigortasi.routname: (_) => EvcilHayvanSigortasi(),
          EvcilHayvanEnterInfo.routname: (_) => EvcilHayvanEnterInfo(),
          EvcilHayvanRequestSuccessful.routname: (_) =>EvcilHayvanRequestSuccessful(),
          Policelerim.routname: (_) => Policelerim(),
          Hesabim.routname: (_) => Hesabim(),
          DilSec.routname: (_) => DilSec(),
          SifreDegistir.routname: (_) => SifreDegistir(),
          Ayarlar.routname: (_) => Ayarlar(),
          DaskPaymentProcess.routname: (_) => DaskPaymentProcess(),
        },
    );
  }
}
