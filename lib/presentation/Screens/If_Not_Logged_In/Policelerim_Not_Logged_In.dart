import 'package:acente/presentation/Screens/Home/Acente365_Detay.dart';
import 'package:acente/presentation/Screens/Login_and_Register/Giris_Yap.dart';
import 'package:acente/presentation/Screens/Login_and_Register/Uye_Ol.dart';
import 'package:acente/presentation/utils/constants.dart';
import 'package:acente/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PolicelerimNotLoggedIn extends StatefulWidget {
  static const String routname = '/policelerim_not_logged_in';

  @override
  _PolicelerimNotLoggedInState createState() => _PolicelerimNotLoggedInState();
}

class _PolicelerimNotLoggedInState extends State<PolicelerimNotLoggedIn> {
  PageController controller = PageController();
  double currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 55, top: 17, right: 25, left: 25),
                child: Row(
                  children: [
                    Image.asset('lib/presentation/Assets/Assets_Home/logo.png', width: 160),
                    Spacer(),
                    BorderButton(
                        text: 'Giriş yap',
                        color: Ternary,
                        onPress: () {
                          Navigator.of(context).pushNamed(GirisYap.routname);
                        },
                        shadow: Red_High_Shadow,
                        fontSize: 12,
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 8)),
                    SizedBox(width: 15),
                    SolidButton(
                        text: 'ÜYE OL',
                        onPress: () {
                          Navigator.of(context).pushNamed(UyeOI.routname);
                        },
                        shadow: Red_High_Shadow,
                        gradient: Red_Gradient,
                        fontSize: 12,
                        padding:
                            EdgeInsets.symmetric(vertical: 9, horizontal: 10)),
                  ],
                ),
              ),
              Expanded(
                child: HomePageSliderItem(
                  heading: 'Giris Yapınız',
                  subHeading:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                ),
              ),
              SizedBox(height: 75),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageSliderItem extends StatelessWidget {
  final String heading;
  final String subHeading;

  HomePageSliderItem({
    required this.heading,
    required this.subHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading, style: V40Sb),
          SizedBox(height: 25),
          Text(subHeading, style: V16L),
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                  child: SolidButton(
                      text: 'Giriş yap',
                      onPress: () {
                        Navigator.of(context).pushNamed(GirisYap.routname);
                      },
                      shadow: Blue_High_Shadow,
                      gradient: Blue_Gradient_2)),
              SizedBox(width: 25),
              Expanded(
                  child: BorderButton(
                      text: 'ÜYE OL',
                      onPress: () {
                        Navigator.of(context)
                            .pushNamed(Acente365Detay.routname);
                      },
                      shadow: Blue_High_Shadow,
                      color: Blue)),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Image.asset(
                  'lib/presentation/Assets/Assets_If_Not_Logged_In/background_icon.png'),
            ),
          ),
        ],
      ),
    );
  }
}
