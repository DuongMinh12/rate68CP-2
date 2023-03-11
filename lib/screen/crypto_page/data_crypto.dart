import 'package:flutter/material.dart';
import '../../component/divider.dart';
import '../../constants.dart';

class DataCrypto extends StatelessWidget {
  const DataCrypto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Text('BTC/USD'),
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: Column(
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
              ),
              Expanded(
                flex: 1,
                child: Column(
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
              )
            ],
          ),
        ),
        DividerG200(),
        Container(
          // color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Text('BNB /USD'),
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: Column(
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
              ),
              Expanded(
                flex: 1,
                child: Column(
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
              ),
            ],
          ),
        ),
        DividerG200(),
      ],
    );
  }
}