import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';

const List<String> listbuy = <String>['USDT (TRC-20)', 'VNDT'];
const List<String> listsell = <String>['VNDT', 'USDT (TRC-20)'];
const List<String> listpayment = <String>['All Payments' ,'TimebitOTC Wallet', 'Crypto Escrow', 'Bank Transfer'];

//buy
class Buttonbuy extends StatefulWidget {
  const Buttonbuy({Key? key}) : super(key: key);

  @override
  State<Buttonbuy> createState() => _ButtonbuyState();
}

class _ButtonbuyState extends State<Buttonbuy> {
  String dropDownValuebuy = listbuy.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            child: Image.asset(AppImages.tpic),
          ),
          SizedBox(width: 8,),
          Expanded(
            flex: 2,
            child: DropdownButton<String>(
              items: listbuy.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(child: Text(value), value: value);
              }).toList(),
              value: dropDownValuebuy,
              icon: const Icon(Icons.keyboard_arrow_down_rounded,
              color: grey400,),
              isExpanded: true,
              underline: const SizedBox(),
              onChanged: (String? value) {
                setState(() {
                  dropDownValuebuy = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

//sell
class Buttonsell extends StatefulWidget {
  const Buttonsell({Key? key}) : super(key: key);

  @override
  State<Buttonsell> createState() => _ButtonsellState();
}

class _ButtonsellState extends State<Buttonsell> {
  String dropDownsell = listsell.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            child: Image.asset(AppImages.vpic),
          ),
          SizedBox(width: 8,),
          Expanded(
            flex: 2,
            child: DropdownButton<String>(
              items: listsell.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(child: Text(value), value: value);
              }).toList(),
              value: dropDownsell,
              icon: const Icon(Icons.keyboard_arrow_down_rounded,
              color: grey400,),
              isExpanded: true,
              underline: const SizedBox(),
              onChanged: (String? value) {
                setState(() {
                  dropDownsell = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

//payment
class Buttonpayment extends StatefulWidget {
  const Buttonpayment({Key? key}) : super(key: key);

  @override
  State<Buttonpayment> createState() => _ButtonpaymentState();
}

class _ButtonpaymentState extends State<Buttonpayment> {
  String dropDownValuecoin = listpayment.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listpayment.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(child: Text(value), value: value);
      }).toList(),
      value: dropDownValuecoin,
      icon: const Icon(Icons.keyboard_arrow_up_rounded,
      color: grey900,),
      isExpanded: true,
      underline: const SizedBox(),
      onChanged: (String? value) {
        setState(() {
          dropDownValuecoin = value!;
        });
      },
    );
  }
}