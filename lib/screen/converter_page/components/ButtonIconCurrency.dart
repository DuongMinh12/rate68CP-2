import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
 List<Image> listimages = <Image>[Image.asset(AppImages.tpic), Image.asset(AppImages.vpic)];

class ButtonIconCurrency extends StatefulWidget {
  const ButtonIconCurrency({Key? key}) : super(key: key);

  @override
  State<ButtonIconCurrency> createState() => _ButtonIconCurrencyState();
}

class _ButtonIconCurrencyState extends State<ButtonIconCurrency> {
  Image dropDownValueIcon = listimages.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Image>(
      items: listimages.map<DropdownMenuItem<Image>>((Image value) {
        return DropdownMenuItem<Image>(child: value, value: value);
      }).toList(),
      value: dropDownValueIcon,
      icon: Container(
        margin: EdgeInsets.only(left: 8),
          child: Icon(Icons.keyboard_arrow_down_outlined)),
      underline: const SizedBox(),
      onChanged: (Image? value) {
        setState(() {
          dropDownValueIcon = value!;
        });
      },
    );
  }
}


//textfield to
class CurrencyTo extends StatelessWidget {
  const CurrencyTo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'To',
        hintText: '0.00',
        suffixIcon: const ButtonIconCurrency(),
        suffixIconConstraints: BoxConstraints(minWidth: 67, maxHeight: 25),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: w500,
          color: textcl,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
        ),
      ),
      style: TextStyle(
        fontSize: 16,
        fontWeight: w500,
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
    );
  }
}

//textfieldfrom

class CurrencyFrom extends StatelessWidget {
  const CurrencyFrom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
        labelText: 'From',
        hintText: '0.00',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const ButtonIconCurrency(),
        suffixIconConstraints: BoxConstraints(minWidth: 67, maxHeight: 25),
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: w500,
          color: textcl,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      style: TextStyle(
        fontSize: 16,
        fontWeight: w500,
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
    );
  }
}