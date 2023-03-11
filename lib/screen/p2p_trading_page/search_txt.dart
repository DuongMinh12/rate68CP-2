import 'package:flutter/material.dart';

import '../../add_images.dart';
import '../../constants.dart';

class SearchTxt extends StatelessWidget {
  const SearchTxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 24),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Amount',
          hintStyle: TextStyle(
            fontWeight: w400,
            fontSize: 12,
            color: grey400,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          suffixIcon: Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                SizedBox(child: Image.asset(AppImages.usdt),
                  height: 30,
                  width: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(AppImages.line),
                ),
                SizedBox(child: Image.asset(AppImages.searchim),
                  height: 36,
                  width: 36,),
              ],
            ),
          ),
          suffixIconConstraints: BoxConstraints(
              maxWidth: 102
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}