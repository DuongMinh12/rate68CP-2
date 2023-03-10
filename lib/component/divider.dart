import 'package:flutter/material.dart';

class DividerG200 extends StatelessWidget {
  const DividerG200({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(thickness: 1, color: Colors.grey.shade200,
    height: 0,);
  }
}