import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/screen/final_page/components/ButtonIconDd.dart';
import 'package:testappppp/screen/final_page/components/body.dart';
import 'package:testappppp/screen/fliter_page/filter_page.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);
  static String routeName = 'finalPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        // body: DataP2PTrading(),
           // DataContactExchange(),
        );
  }
}

// class DataP2PTrading extends StatelessWidget {
//   const DataP2PTrading({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView.builder(itemCount: 5,
//       itemBuilder: (BuildContext context, int indext){
//         return Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 8),
//               child: Row(
//                 children: [
//                   Container(
//                     height: 40,
//                       width: 40,
//                       margin: EdgeInsets.only(right: 12),
//                       child: Image.asset(AppImages.ellipse)),
//                   Text('Jerome Bell',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: w400,
//                     color: grey900,
//                   ),),
//                   Spacer(),
//                   Text('4 order',
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: w400,
//                       color: grey500,
//                     ),),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 8),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text('Amount',
//                         style: TextStyle(
//                           fontSize: 11,
//                           fontWeight: w400,
//                           color: grey500,
//                         ),),
//                       Spacer(),
//                       Text('Price',
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: w400,
//                           color: grey500,
//                         ),),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 4),
//                     child: Row(
//                       children: [
//                         Text('34,306.85 ',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: w400,
//                             color: grey900,
//                           ),),
//                         Text('USDT',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: w400,
//                             color: grey500,
//                           ),),
//                         Spacer(),
//                         Text('24,120 ',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: w400,
//                             color: grey900,
//                           ),),
//                         Text('VNDT',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: w400,
//                             color: grey500,
//                           ),),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10, bottom: 20),
//               child: Row(
//                 children: [
//                   PaymentWalletCT(),
//                   Spacer(),
//                   const Text('Buy USDT  ',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: w400,
//                       color: Color(0xFF16B364),
//                     ),),
//                   GestureDetector(
//                     child: SizedBox(
//                       height: 20,
//                       width: 20,
//                       child: Image.asset(AppImages.arrowright,
//                       color: Color(0xFF16B364),),
//                     ),
//                     onTap: (){
//                       print('holaaaaaaa');
//                     },
//                   )
//                 ],
//               ),
//             ),
//             Divider(thickness: 1, color: Colors.grey.shade200,)
//           ],
//         );
//       },
//       ),
//     );
//   }
// }
//
// class PaymentWalletCT extends StatelessWidget {
//   PaymentWalletCT({super.key,});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         children: [
//           Container(
//             height: 16,
//             width: 8,
//             margin: EdgeInsets.only(right: 8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(2),
//               color: kMainColor,
//             ),
//           ),
//           const Text(
//             'TimebitOTC Wallet',
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w500,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
