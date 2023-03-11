import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/contact_exchange_page/components/data_contac_exchange.dart';
import 'package:testappppp/component/searchbar.dart';

import '../../../component/page_change_button.dart';

class ContactExchange extends StatelessWidget {
  const ContactExchange({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 20),
          padding: EdgeInsets.all(16),
          height: 760,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: grey300,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Contact Exchange',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: grey900,
                    ),),
                  Spacer(),
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: GestureDetector(
                      child: Image.asset(AppImages.sortDescending),
                      onTap: (){
                        print('heloooooo');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: GestureDetector(
                        child: Image.asset(AppImages.filter),
                        onTap: (){
                          print('holaaaaaa');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SearchBartxt(),
              DataContactExchange(),
              PageChangeButton()
            ],
          ),
        )
      ],
    );
  }
}
