import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String type;
  final String label;
  final Function onPressedAction;
  final Color bgColor;
  final Color textColor;
  final double width;
  final double height;
  final double fontSize;
  final IconData icon;
  final double borderRadius;
  final bool isCustomRadius;
  final double padding;
  final Color borderColor;
  final double borderSize;
  final bool boldFont;

  Button(
    this.label,
    {this.type = 'raised_button',
    this.width = 100,
    this.height = 46,
    this.onPressedAction,
    this.bgColor,
    this.textColor = Colors.white,
    this.fontSize = 16,
    this.icon,
    this.borderRadius = 5.0,
    this.isCustomRadius = false,
    this.padding = 10.0,
    this.borderColor,
    this.boldFont = false,
    this.borderSize }
  ) : super();

  @override
  Widget build(BuildContext context) {
    ButtonThemeData btnTheme = Theme.of(context).buttonTheme.copyWith(
      minWidth: 300,
      height: 30,
      buttonColor: bgColor ?? Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderSize != null
          ? BorderSide(width: borderSize, color: borderColor)
          : BorderSide(width: 0)
      ),
      padding: EdgeInsets.all(padding),
    );
    Text text = Text(
      label,
      style: TextStyle(fontSize: 15, fontWeight: boldFont ? FontWeight.w500 : FontWeight.normal, ),
      textAlign: TextAlign.center,
    );

    switch (type.toLowerCase()) {
      case 'flat_button':
        return ButtonTheme.fromButtonThemeData(
          data: btnTheme,
          child: FlatButton(
            onPressed: onPressedAction,
            textColor: textColor,
            child: text,
          ),
        );

      default:
        return 
        
        // ButtonTheme.fromButtonThemeData(
        //   data: btnTheme,
        //   child: 
          
          RaisedButton(
            padding: EdgeInsets.all(padding != null ? padding : 10),
            shape: RoundedRectangleBorder(
              side: borderSize != null
                ? BorderSide(width: borderSize, color: borderColor)
                : BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            onPressed: onPressedAction,
            textColor: textColor,
            elevation: 0,
            color: bgColor ?? Theme.of(context).accentColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                text,
                if (icon != null) ...[
                  SizedBox(width: 10,),
                  Icon(icon),
                ],
              ],
            ),
          );


        // );
    }
  }
}
