import 'package:flutter/material.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/main_page/components/button_dropDown.dart';

class FilterPage extends StatelessWidget {
  FilterPage({Key? key}) : super(key: key);
static String routeName = 'filterPage';
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Filter',
        style: TextStyle(
          color: fcolor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.close),
          color: grey900,)
        ],
      ),
      body: Container(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 743,
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Buy',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: fcolor,
                  ),),
                  Container(
                    margin: const EdgeInsets.only(top: 8,bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 40,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ButtonCurrencyDropDown(),
                    ),
                  ),

                   const Text('Sell',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: fcolor,
                    ),),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 40,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ButtonCurrencyDropDown(),
                    ),
                  ),

                  const Text('Payment',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: fcolor,
                    ),),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: grey900,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 40,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ButtonCurrencyDropDown(),
                    ),
                  ),

                  Container(
                    height: 248,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [BoxShadow(
                        blurRadius:60,
                        color: boxcolor,
                        offset: Offset(0, 32)
                      )]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Payment',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: grey900,
                          ),),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1,
                              color: grey400,
                            )
                          ),
                          height: 40,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 12,bottom: 8),
                          padding: EdgeInsets.all(12),
                          child: const Text('All payment',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: grey900,
                          ),),
                        ),

                        PaymentWallet(colour: kMainColor, valuetext: 'TimebitOTC Wallet', ),
                        PaymentWallet(colour: Color(0xFF34D399), valuetext: 'Crypto Escrow', ),
                        PaymentWallet(colour: Color(0xFFFB8134), valuetext: 'Bank Transfer', ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentWallet extends StatelessWidget {
  PaymentWallet({super.key, required this.colour, required this.valuetext});
  final Color colour;
  final String valuetext;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      child: Row(
        children: [
          Container(
            height: 16,
            width: 8,
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: colour,
            ),
          ),
           Text(
             valuetext,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: textcolor,
            ),
           )
        ],
      ),
    );
  }
}
