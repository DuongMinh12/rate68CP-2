import 'package:flutter/material.dart';

const List<String> listdata = <String>['EN', 'VN'];
const List<String> listcurrence = <String>['USD', 'VND'];
const List<Icon> listicon = <Icon>[Icon(Icons.light_mode_outlined), Icon(Icons.bedtime_outlined)];

class ButtonDropDown extends StatefulWidget {
  const ButtonDropDown({Key? key}) : super(key: key);

  @override
  State<ButtonDropDown> createState() => _ButtonDropDownState();
}

class _ButtonDropDownState extends State<ButtonDropDown> {
  @override
  String DropDownValue = listdata.first;
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listdata.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(child: Text(value), value: value);
      }).toList(),
      value: DropDownValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      underline: const SizedBox(),
      onChanged: (String? value) {
        setState(() {
          DropDownValue = value!;
        });
      },
    );
  }
}

//currency
class ButtonCurrencyDropDown extends StatefulWidget {
  const ButtonCurrencyDropDown({Key? key}) : super(key: key);

  @override
  State<ButtonCurrencyDropDown> createState() => _ButtonCurrencyDropDownState();
}

class _ButtonCurrencyDropDownState extends State<ButtonCurrencyDropDown> {
  String dropDownValueCurrency = listcurrence.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listcurrence.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(child: Text(value), value: value);
      }).toList(),
      value: dropDownValueCurrency,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      underline: const SizedBox(),
      onChanged: (String? value) {
        setState(() {
          dropDownValueCurrency = value!;
        });
      },
    );
  }
}

//icon
class ButtonIconDropDown extends StatefulWidget {
  const ButtonIconDropDown({Key? key}) : super(key: key);

  @override
  State<ButtonIconDropDown> createState() => _ButtonIconDropDownState();
}

class _ButtonIconDropDownState extends State<ButtonIconDropDown> {
  Icon dropDownValueIcon = listicon.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Icon>(
      items: listicon.map<DropdownMenuItem<Icon>>((Icon value) {
        return DropdownMenuItem<Icon>(child: value, value: value);
      }).toList(),
      value: dropDownValueIcon,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      underline: const SizedBox(),
      onChanged: (Icon? value) {
        setState(() {
          dropDownValueIcon = value!;
        });
      },
    );
  }
}
