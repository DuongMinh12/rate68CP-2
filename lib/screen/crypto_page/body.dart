import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/component/searchbar.dart';

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
          height: 708,
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

            ],
          ),
        )
      ],
    );
  }
}