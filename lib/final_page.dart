import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/component/cancel_confirm_bar.dart';
import 'package:testappppp/component/divider.dart';
import 'package:testappppp/constants.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);
  static String routeName = 'finalPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Test Page'),
      ),
      body: BodyDataGold(),
    );
  }
}

class BodyDataGold extends StatelessWidget {
  const BodyDataGold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade100,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Name',
                  style: stylew4g5s12,
                ),
                flex: 1,
              ),
              // Spacer(),
              // Text(
              //   'Buy',
              //   style: stylew4g5s12,
              // ),
              // Spacer(),
              // Text(
              //   'Sell',
              //   style: stylew4g5s12,
              // ),
              // Spacer(),
              // Text('Chart', style: stylew4g5s12,),
              Expanded(
                child: Text(
                  'Buy',
                  style: stylew4g5s12,
                ),
                flex: 1,
              ),
              Expanded(
                child: Text(
                  'Sell',
                  style: stylew4g5s12,
                ),
                flex: 1,
              ),
            ],
          ),
        ),
        Container(
          height: 500,
          child: ListView.builder(
            itemCount: 4,
              itemBuilder: (BuildContext context, int indext){
              return DataGold();
              }),
        ),

        // ListTile(
        //   leading: Text('USD/VND'),
        //   trailing: Text('jkbjbkj'),
        //   title: Row(
        //     children: [
        //       TextListTitle(),
        //     ],
        //   ),
        //   subtitle: Row(
        //     children: [
        //       Icon(Icons.arrow_drop_up, color:arrowclgreen,),
        //       Text('9',
        //         style: stylew6greens12,),
        //     ],
        //   ),
        //
        // )
      ],
    );
  }
}

class DataGold extends StatelessWidget {
  const DataGold({
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
                child: Text('Gold SJC'),
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
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text('Gold 95%'),
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
        ),
        DividerG200(),
      ],
    );
  }
}

// class TextListTitle extends StatelessWidget {
//   const TextListTitle({
//     Key? key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(
//         '24,121',
//         style: stylew4g9s12,
//       ),
//       color: Colors.blue,
//       margin: EdgeInsets.all(8),
//     );
//   }
// }
