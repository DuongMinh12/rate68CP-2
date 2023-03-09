import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/contact_exchange_page/components/body.dart';
import 'package:testappppp/screen/contact_page/components/body.dart';
import 'package:testappppp/screen/converter_page/components/body.dart';
import 'package:testappppp/screen/crypto_page/body.dart';
import 'package:testappppp/screen/final_page/components/body.dart';
import 'package:testappppp/screen/gold_page/body.dart';
import 'package:testappppp/screen/live_exchange_page/components/body.dart';
import 'package:testappppp/screen/main_page/main_page.dart';
import 'package:testappppp/screen/p2p_trading_page/body.dart';

class TotalPage extends StatefulWidget {
  const TotalPage({Key? key}) : super(key: key);
  static String routeName = 'totalPage';
  @override
  State<TotalPage> createState() => _TotalPageState();
}

class _TotalPageState extends State<TotalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Image.asset(AppImages.logoshape),
            padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
            iconSize: 24,
            onPressed: () {},
          ),
          titleSpacing: 0,
          title: const Text(
            'Rates68',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 24,
            ),
          ),
          actions: <Widget>[
            IconButtonNVconverter(),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
            bodyConverter(),
            BodyLiveRatePage(),
            ContactExchange(),
            BodyGoldPage(),
            BodyCrytoPage(),
            BodyP2PTrading(),
            Body_contact_page(),
            BodyFinalPage(),
          ],
        ),
      ),
    );
  }
}

class IconButtonNVconverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, MainPage.routeName);
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ));
  }
}
