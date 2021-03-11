import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CHTextInput extends StatefulWidget {
  final Widget prefixIcon;
  final String label;
  final int maxLength;
  final bool bold;
  final int maxLines;
  final Widget suffixIcon;
  final String errorText;
  final bool disabled;
  final bool obscureText;
  final TextInputType inputType;
  final String placeholder;
  final String output;
  final Function onChanged;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final double paddingBottom;
  final double paddingLeft;
  final double horizontalFieldPadding;
  final double verticalFieldPadding;
  final bool creatingGroup;

  CHTextInput({
    this.placeholder,
    this.obscureText = false,
    this.bold = false,
    this.inputType,
    this.maxLength,
    this.maxLines = 1,
    this.errorText,
    this.disabled = false,
    this.output,
    this.suffixIcon,
    this.label,
    this.prefixIcon,
    this.controller,
    this.onChanged,
    this.validator,
    this.paddingBottom = 15,
    this.paddingLeft,
    this.horizontalFieldPadding = 12,
    this.verticalFieldPadding = 20,
    this.creatingGroup = false
  });
  @override
  State<StatefulWidget> createState() => TextInputState();
}

class TextInputState extends State<CHTextInput> {
  String error;

  @override
  Widget build(BuildContext context) {
    String fieldError = error ?? widget.errorText;
    print('printing error message on text input $fieldError');

    List<Widget> children = [
      Container(
        margin: EdgeInsets.only(bottom: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Visibility(
              visible: widget.label != null,
              child: Text(
                '${widget.label}',
              ),
            ),
          ]
        )
      ),
      TextFormField(
        style: TextStyle(fontSize: 15),
        enabled: !widget.disabled,
        maxLength: widget.maxLength,
        keyboardType: widget.inputType,
        controller: widget.controller,
        maxLines: widget.maxLines,
        validator: (String val) {
          setState(() {
            error = widget.validator(val);
          });
          return error;
        },
        obscureText: widget.obscureText,
        onChanged: (String val) {
          setState(() {
            error = null;
          });
          if (widget.onChanged != null) {
            widget.onChanged(val);
          }
        },
        decoration: InputDecoration(
          // contentPadding: widget.paddingLeft != null
          //   ? EdgeInsets.only(left: widget.paddingLeft, top: widget.verticalFieldPadding, bottom: widget.verticalFieldPadding)
          //   : EdgeInsets.symmetric(horizontal: widget.horizontalFieldPadding, vertical: widget.verticalFieldPadding),
          counterText: '',
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: -5),
          errorStyle: TextStyle(fontSize: 0),
          // enabledBorder: fieldError != null
          //   ? Theme.of(context).inputDecorationTheme.errorBorder
          //   : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Color(0xFF3b4244), width: 1)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Color(0xFF3b4244), width: 2),
          ),
          hintText: widget.placeholder,
          prefixIcon: widget.prefixIcon 
          // != null 
          //   ? Container(
          //       transform: Matrix4.translationValues(-5.0, -0.0, 0.0),
          //       child: widget.prefixIcon
          //     )
          //   : null
            ,
          
          suffixIcon: widget.suffixIcon,
          // filled: cg,
          // fillColor: cg ? Colors.grey[100].withAlpha(20) : null,
          hintStyle: TextStyle(color: Color(0xFF3b4244))
        )
        .applyDefaults(Theme.of(context).inputDecorationTheme),
      ),
      // Align(
      //   alignment: Alignment.centerRight,
      //   child: Visibility(
      //     visible: fieldError != null && widget.disabled == false,
      //     child: Text(
      //       fieldError ?? widget.output ?? '',
      //       style: Theme.of(context).textTheme.caption.copyWith(
      //           color: fieldError != null ? Colors.red : Colors.white,
      //           fontWeight: FontWeight.w600
      //         ),
      //     ),
      //   ),
      // ),
    ];
    return Padding(
      padding: EdgeInsets.only(bottom: widget.paddingBottom),
      child: Column(
        children: children,
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }
}
