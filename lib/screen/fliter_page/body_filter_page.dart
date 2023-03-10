import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/component/cancel_confirm_bar.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/fliter_page/button_dropdown_filter.dart';

class BodyFilterPage extends StatelessWidget {
  const BodyFilterPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.only(top: 8),
      // color: Colors.white,
      height: 710,
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                flex: 2,
                child: Text('Filter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: w600
                ),),
              ),
              IconButton(icon: Icon(Icons.close),
              onPressed: (){
                Navigator.pop(context);
              },),
            ],
          ),

          ///Buy
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
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Buttonbuy(),
            ),
          ),

          ///Sell
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
              child: Buttonsell(),
            ),
          ),

          ///Payment
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
              child: Buttonpayment(),
            ),
          ),

          Container(
            height: 240,
            width: double.infinity,
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [BoxShadow(
                    blurRadius:40,
                    color: boxcolor,
                    offset: Offset(0, 10)
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
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
              child: Divider(thickness: 1, color: Colors.grey.shade200,)),
          CancelConfirmBar()
        ],
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