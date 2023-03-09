import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/screen/final_page/components/ButtonIconDd.dart';

class BodyFinalPage extends StatelessWidget {
  const BodyFinalPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only( top: 30, left: 16, right: 16, bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                child: Image.asset(AppImages.logoshape),
                height: 24,
                width: 24,
                margin: EdgeInsets.only(right: 7.2),
              ),
              Text(
                'Rates68',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 12),
            child: Text(
              'Converter',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              'Live Rate',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              'P2P Trading',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Text(
              'Download App',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(color: Colors.grey.shade200,
            thickness: 1,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LanguageButton(),
              CurrencyButton(),
              ButtonIconDd(),
            ],
          ),
          Divider(color: Colors.grey.shade200,
            thickness: 1,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(onPressed: () {}, child: Text('Privacy Policy',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade900,
                ),),
              ),
              TextButton(onPressed: () {}, child: Text('Terms of Service',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade900,
                ),)),
              Text('© 2022 TimebitOTC. All Rights Reserved',
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),),
            ],
          ),
        ],
      ),
    );
  }

  Container LanguageButton() {
    return Container(
                margin: EdgeInsets.only(top: 24, bottom: 24, right: 22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 40,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                      child: ButtonDropDown(),
                    ),
                  ],
                ),
              );
  }
  Container CurrencyButton() {
    return Container(
      margin: EdgeInsets.only(top: 24, bottom: 24, right: 22),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      height: 40,
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
            child: ButtonCurrencyDropDown(),
          ),
        ],
      ),
    );
  }
  Container ButtonIconDd() {
    return Container(
      margin: EdgeInsets.only(top: 24, bottom: 24),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          height: 40,
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27, vertical: 8),
                child: ButtonIconDropDown(),
              ),
            ],
          ),
    );
  }
}