import 'package:flutter/material.dart';
import 'package:testappppp/constants.dart';

class SearchBartxt extends StatelessWidget {
  const SearchBartxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24, bottom: 16),
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            prefixIcon: Icon(Icons.search),
            hintText: 'Search...',
            labelStyle: TextStyle(
              fontSize: 14,
              color: grey400,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                    color: Colors.black
                )
            )
        ),
      ),
    );
  }
}