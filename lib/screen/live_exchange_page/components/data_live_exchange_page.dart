import 'package:flutter/material.dart';

import '../../../add_images.dart';
import '../../../component/divider.dart';
import '../../../constants.dart';

class DataExchangePage extends StatelessWidget {
  const DataExchangePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text('USD/VND'),
              SizedBox(width: 39,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '24,121',
                    style: stylew4g9s12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_up,
                        color: arrowclgreen,
                      ),
                      Text(
                        '9',
                        style: stylew6greens12,
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '24,121',
                    style: stylew4g9s12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_up,
                        color: arrowclgreen,
                      ),
                      Text(
                        '9',
                        style: stylew6greens12,
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(AppImages.chart),
              )
            ],
          ),
        ),
        DividerG200(),
        Container(
          // color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text('JPY/VND'),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '24,121',
                    style: stylew4g9s12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_down,
                        color: arrowclred,
                      ),
                      Text(
                        '-0.02',
                        style: stylew6reds12,
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '24,121',
                    style: stylew4g9s12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_down,
                        color: arrowclred,
                      ),
                      Text(
                        '-0.02',
                        style: stylew6reds12,
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(AppImages.chart),
              )
            ],
          ),
        ),
        DividerG200(),
      ],
    );
  }
}