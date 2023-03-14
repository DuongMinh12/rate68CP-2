import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/main_page/components/button_dropDown.dart';
import 'package:testappppp/screen/total_page/total_page.dart';


// List<String> titles = ['Converter', 'Live Rate', 'P2P trading', 'Download App'];

class Body extends StatefulWidget {
  Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState(){
    super.initState();
    loadDataa();
  }

  void loadDataa() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      saveTab = pref.getInt('save') ?? 0;
    });
  }

  int? saveTab;
  int selected =0;

  Widget RadioCustom (String txt, int index){
    return ElevatedButton(
      onPressed: () async{
        SharedPreferences pref = await SharedPreferences.getInstance();
        setState(() {
          selected = index;
          saveTab = 0;
          pref.setInt('save', index);
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        width: double.infinity,
        child: Text(
          txt,
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
                color: (selected == index || saveTab == index)? kMainColor :Colors.white,
                width: 2,
              )
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 273,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
            child: Column(
              children: [
                RadioCustom('Converter', 1),
                RadioCustom('Live Rate', 2),
                RadioCustom('P2P Trading', 3),
                RadioCustom('Download App', 4),
              ],
            ),
            // child: ListView.builder(
            //     itemCount: titles.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return ButtonSizeBox(
            //         title: titles[index],
            //       );
            //     }),
          ),
        ),
        Column(
          children: [
            buildDropdownButton(),
            buildDropdownButtonCurrency(),
            buildDropdownButtonIcon(),
          ],
        )
      ],
    );
  }

  Container buildDropdownButton() {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ButtonDropDown(),
      ),
    );
  }

  Container buildDropdownButtonCurrency() {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ButtonCurrencyDropDown(),
      ),
    );
  }

  Container buildDropdownButtonIcon() {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ButtonIconDropDown(),
      ),
    );
  }
}

// class ButtonSizeBox extends StatefulWidget {
//   final String title;
//   // int id;
//    ButtonSizeBox({
//     super.key,
//     required this.title,
//     // required this.id,
//   });
//
//   @override
//   State<ButtonSizeBox> createState() => _ButtonSizeBoxState();
// }
//
// class _ButtonSizeBoxState extends State<ButtonSizeBox> {
//   var isHover = false;
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: (){
//         setState(() {
//           isHover=!isHover;
//         });
//         },
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 8),
//         child: Text(
//           widget.title,
//           style: const TextStyle(
//             fontSize: 16,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       style: ElevatedButton.styleFrom(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30),
//               side: BorderSide(
//                 color: isHover? kMainColor :Colors.white,
//                 width: 2,
//               )
//           )
//       ),
//     );
//   }
// }




