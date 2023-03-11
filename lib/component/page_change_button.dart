import 'package:flutter/material.dart';

import '../constants.dart';

class PageChangeButton extends StatelessWidget {
  const PageChangeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 50,
      margin: EdgeInsets.only(top: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(
                      width: 1,
                      color: grey200
                  )
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_rounded), color: grey300,)),
          Spacer(),
          Text('Page 1/10',
            style: TextStyle(
                fontSize: 14,
                fontWeight: w500,
                color: grey500
            ),),
          Spacer(),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(
                      width: 1,
                      color: grey200
                  )
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded), color: grey900,))
        ],
      ),
    );
  }
}