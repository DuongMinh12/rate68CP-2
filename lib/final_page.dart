import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/component/cancel_confirm_bar.dart';
import 'package:testappppp/component/divider.dart';
import 'package:testappppp/constants.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);
  static String routeName = 'finalPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Test Page'),
      ),
      body: Center(
        child: NewWidget(),
      )
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  bool ihidebutton = true;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.pushNamed(context, TotalPage.routeName);
      setState(() {
        ihidebutton =! ihidebutton;
      });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
         'Test aa',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(
                color: ihidebutton? kMainColor : Colors.white,
                width: 2,
              )
          )
      ),
    );
  }
}

