import 'package:flutter/material.dart';
import 'package:valuejet/utils/colors.dart';

class TransactionTile extends StatelessWidget {
  // final Function onPressed;
  TransactionTile(
      //{
      // required this.onPressed,
      // }
      );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 30,
                  height: 30,
                  child: Image.asset("assets/images/up.png")),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Transfer",
                    style: TextStyle(fontSize: 15, color: AppColors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Incoming transfer",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.black),
                  ),
                ],
              ),
              Text(
                "+ N3,110",
                style: TextStyle(fontSize: 15, color: AppColors.black),
              ),
            ],
          ),
        ));
  }
}
