import 'package:flutter/material.dart';

class AppBottomSheet {
  static Future<String> show({BuildContext context, Widget content, double height = 300}) async {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white, 
      builder: (BuildContext context) {
        return Container(
          color: Theme.of(context).primaryColor,
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: content
            )
          ),
        );
      });
  }
}