import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/final_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../component/cancel_confirm_bar.dart';

class BodyRefresh extends StatefulWidget {
  const BodyRefresh({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyRefresh> createState() => _BodyRefreshState();
}

class _BodyRefreshState extends State<BodyRefresh> {
  // List<String> datarefresh =['No Refresh', 'Refresh after 5 seconds',
  //   'Refresh after 10 seconds', 'Refresh after 15 seconds',
  //   'Refresh after 20 seconds'];
  @override
  void initState() {
    super.initState();
    loadDataa();
  }

  void loadDataa() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    // pref.setBool('stateOfButton', true);
    setState(() {
      choos = pref.getInt('key') ?? 0;
    });
  }

  int slct = 0;
  int? choos;

  @override
  Widget ButtonRefresh(String txts, int index) {
    Color colotxt = (slct == index || choos == index) ? const Color(0xFF2B323B) : grey500;
    Color coloicon = (slct == index || choos == index) ? Color(0xFF16B364) : Colors.white;
    Color coloborder = (slct == index || choos == index) ? grey400 : Colors.white;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(
        onPressed: () async {
          SharedPreferences pref = await SharedPreferences.getInstance();
          setState(() {
            slct = index;
            choos = 0;
            pref.setInt("key", index);
            // if(choos!=0){
            //   slct = pref.getInt('key') ?? 0;
            // }
            // choos = true;
            // savedata();
            // savedata();
            // var test = pref.getInt('key');
            //  print(test);
            // print();
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          // margin: EdgeInsets.symmetric(vertical: 6),
          height: 40,
          child: Row(
            children: [
              Text(
                txts,
                style: TextStyle(
                  fontWeight: w400, fontSize: 14,
                  color: colotxt,
                  // color: Colors.black
                ),
              ),
              Spacer(),
              Icon(
                Icons.check,
                color: coloicon,
                // color: Colors.black,
                size: 16,
              )
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: coloborder,
                  // color: kMainColor,
                  width: 1,
                ))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      'Refresh',
                      style: TextStyle(fontSize: 18, fontWeight: w600),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Container(
                height: 290,
                width: double.infinity,
                child: Column(
                  children: [
                    ButtonRefresh('No Refresh', 1),
                    ButtonRefresh('Refresh after 5 seconds', 2),
                    ButtonRefresh('Refresh after 10 seconds', 3),
                    ButtonRefresh('Refresh after 15 seconds', 4),
                    ButtonRefresh('Refresh after 20 seconds', 5),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.shade200,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CancelConfirmBar(),
        ),
      ],
    );
  }
}
