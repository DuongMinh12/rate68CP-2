import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/constants.dart';

class DataContactExchange extends StatelessWidget {
  const DataContactExchange({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      // color: Colors.blue,
      // margin: EdgeInsets.symmetric(vertical: 24),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, indext) {
          return TableViewData();
        },
      ),
    );
  }
}

class TableViewData extends StatelessWidget {
  TableViewData({Key? key,}) : super(key: key);
  List<String> title1 = ['Amount', 'Date', 'Created by', 'Affiliate'];
  List<String> title2 = ['1,000', '28-12-2022 | 07:38:23', 'Pham Minh Hung', 'Nguyen Van An'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            // padding: EdgeInsets.symmetric(vertical: 8),
            // color: Colors.blue,
            child: Column(
              children: [
                Container(
                  height: 20,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  // color: Colors.blue,
                  // color: Colors.blue,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Image.asset(AppImages.vnpic),
                      ),
                      const Text('VND',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: w500,
                          color: grey900,
                        ),),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Image.asset(AppImages.arrowright,
                          color: kMainColor,
                          height: 16,
                          width: 16,),),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Image.asset(AppImages.jppic),
                      ),
                      Text('USD',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: w500,
                          color: grey900,
                        ),),
                      Spacer(),
                      Image.asset(AppImages.phone),
                      const Text('Contact',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: w500,
                          color: kMainColor,
                        ),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130,
                  // color: Colors.blue,
                  child: ListView.builder(
                    itemCount: 4,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int indext){
                      return Data(
                        title: title1[indext],
                        titles: title2[indext],
                      );
                    },
                  ),
                ),
                Divider(thickness: 1, color: Colors.grey.shade200,)
              ],
            )),
      ],
    );
  }
}

// class ImageChangeFlag extends StatelessWidget {
//    ImageChangeFlag({
//     Key? key, required this.changeimage,
//   }) : super(key: key);
//
//   String changeimage ;
//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(changeimage);
//   }
// }

class Data extends StatefulWidget {
  const Data({super.key, required this.title, required this.titles});

  final String title;
  final String titles;

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      // color: Colors.blue,
      child: Row(
        children: [
          Text(widget.title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: w400,
              color: Colors.grey.shade500,
            ),),
          Spacer(),
          Text(widget.titles,
            style: TextStyle(
              fontSize: 14,
              fontWeight: w400,
              color: grey900,
            ),)
        ],
      ),
    );
  }
}