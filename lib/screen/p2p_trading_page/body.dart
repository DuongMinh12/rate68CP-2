import 'package:flutter/material.dart';
import 'package:testappppp/screen/p2p_trading_page/data_p2p_trading.dart';

import '../../add_images.dart';
import '../../constants.dart';

class BodyP2PTrading extends StatelessWidget {
  const BodyP2PTrading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 24, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('P2P Trading',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 24),
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade100,
                    ),
                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          TabBar(tabs: const [
                            Tab(child: Text('Buy', style: TextStyle(
                                fontSize: 16
                            ),),),
                            Tab(child: Text('Sell',
                              style: TextStyle(
                                fontSize: 16,
                              ),),)
                          ],
                            labelColor: grey900,
                            indicatorColor: Colors.transparent,
                            unselectedLabelColor: grey400,
                            indicator: BoxDecoration(
                                color: Color(0xFF16B364),
                                borderRadius: BorderRadius.circular(8)
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: GestureDetector(
                      child: Image.asset(AppImages.refresh),
                      onTap: (){
                        print('heloooooo');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: GestureDetector(
                        child: Image.asset(AppImages.filter),
                        onTap: (){
                          print('holaaaaaa');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 24),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Amount',
                      hintStyle: TextStyle(
                        fontWeight: w400,
                        fontSize: 12,
                        color: grey400,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    suffixText: 'bhubhbb',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              Container(
                height: 884,
                  width: double.infinity,
                  child: const DataP2PTrading()),
            ],
          ),

        )
      ],
    );
  }
}