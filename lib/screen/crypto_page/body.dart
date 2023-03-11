import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/component/page_change_button.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/component/searchbar.dart';
import 'package:testappppp/screen/crypto_page/data_crypto.dart';

class BodyCrytoPage extends StatelessWidget {
  const BodyCrytoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
          padding: EdgeInsets.all(16),
          height: 713,
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
              Container(
                padding: const EdgeInsets.only(
                  bottom: 5, // Space between underline and text
                ),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(
                      color: kMainColor,
                      width: 2, // Underline thickness
                    ))
                ),
                child: const Text(
                  "Crypto",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: grey900,
                    ),
                ),
              ),
              SearchBartxt(),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade100,
                    ),
                    // height: 600,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Name',
                            style: stylew4g5s12,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Text(
                            'Buy',
                            style: stylew4g5s12,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Text(
                            'Sell',
                            style: stylew4g5s12,
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 450,
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int indext){
                          return DataCrypto();
                        }),
                  ),
                  PageChangeButton()
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}