import 'package:flutter/material.dart';
import 'package:testappppp/constants.dart';

class CancelConfirmBar extends StatelessWidget {
  const CancelConfirmBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: TextButton(onPressed: (){
              Navigator.pop(context);
            },
              child: Text('Cancel',
                style: TextStyle(
                    color: Colors.black
                ),),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999),
                  )
              ),)),
        SizedBox(width: 16,),
        ConfirmButton(),
      ],
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Confirm'),
          style: ElevatedButton.styleFrom(
              backgroundColor: kMainColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(999),
              )
          ),
        ));
  }
}