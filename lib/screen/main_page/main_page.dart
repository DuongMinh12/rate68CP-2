import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/total_page/total_page.dart';
import 'components/body.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  static String routeName = 'mainPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Image.asset(AppImages.logoshape),
        padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
        iconSize: 24,
        onPressed: (){},
      ),
      titleSpacing: 0,
      title: const Text('Rates68',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 24,
        ),),
      actions: <Widget> [
        IconButtonNVmaipage(),
      ],
    );
  }
}

class IconButtonNVmaipage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      Navigator.pushNamed(context, TotalPage.routeName);
    },
        icon: const Icon(Icons.close,
          color: Colors.black,)
    );
  }
}




