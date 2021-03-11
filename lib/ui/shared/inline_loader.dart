import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class InlineLoader extends StatelessWidget {
  final double size;
  final Color color;

  InlineLoader({this.size = 27, this.color}) : super();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitRing(
        color:  color ?? Colors.white12,// Theme.of(context).accentColor,
        size: 27,
        lineWidth: 4,
      )
    );
  }
}
