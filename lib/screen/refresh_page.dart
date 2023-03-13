import 'package:flutter/material.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/final_page.dart';

import '../component/cancel_confirm_bar.dart';

class BodyRefresh extends StatefulWidget {
  const BodyRefresh({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyRefresh> createState() => _BodyRefreshState();
}

class _BodyRefreshState extends State<BodyRefresh> {
  List<String> datarefresh =['No Refresh', 'Refresh after 5 seconds',
    'Refresh after 10 seconds', 'Refresh after 15 seconds',
    'Refresh after 20 seconds'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text('Refresh',
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

              Container(
                height: 290,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: datarefresh.length,
                    itemBuilder: (BuildContext context, int indext){
                      return ButtonRefresh(
                        refreshs: datarefresh[indext],
                      );
                    }
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 1,color: Colors.grey.shade200,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CancelConfirmBar(),
        ),
      ],
    );
  }
}

// class ButtonRefresh extends StatefulWidget {
//   ButtonRefresh({ super.key, required this.refreshs});
//   final String refreshs;
//   @override
//   State<ButtonRefresh> createState() => _ButtonRefreshState();
// }
// class _ButtonRefreshState extends State<ButtonRefresh> {
//   bool isHover = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Container(
//         height: 40,
//         width: double.infinity,
//         alignment: Alignment.centerLeft,
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         decoration: BoxDecoration(
//           // color: Colors.blue,
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(
//               width: 1,
//               color: isHover? grey400:Colors.transparent,)
//         ),
//         child: Row(
//           children: [
//             Text(widget.refreshs,
//               style: TextStyle(
//                   fontWeight: w400,fontSize: 14,
//                   color: isHover? Color(0xFF2B323B) : grey500,
//               ),),
//             Spacer(),
//             Icon(Icons.check,
//               color: isHover? Color(0xFF16B364):Colors.white,
//               size: 16,)
//           ],
//         ),
//       ),
//     );
//   }
// }

class ButtonRefresh extends StatefulWidget {
  final String refreshs;
  const ButtonRefresh({
    super.key,
    required this.refreshs,
  });

  @override
  State<ButtonRefresh> createState() => _ButtonRefreshState();
}

class _ButtonRefreshState extends State<ButtonRefresh> {
  var isHover = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.pushNamed(context, TestPage.routeName);
        // setState(() {
        //   isHover=!isHover;
        //   // Navigator.pushNamed(context, TestPage.routeName);
        // });
      },
      child: Container(
        height: 40,
        width: double.infinity,
        child: Row(
          children: [
            Text(widget.refreshs,
              style: TextStyle(
                fontWeight: w400,fontSize: 14,
                color: isHover? Color(0xFF2B323B) : grey500,
              ),),
            Spacer(),
            Icon(Icons.check,
              color: isHover? Color(0xFF16B364):Colors.white,
              size: 16,)
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(
                color: isHover? kMainColor :Colors.white,
                width: 2,
              )
          )
      ),
    );
  }
}
