// import 'package:flutter/material.dart';

// class ScreenFrame extends StatelessWidget {
//   final String title;
//   final String bgImage;
//   final Color bgColorOverlay;
//   final double horizontalPadding;
//   final Function backAction;
//   final Widget child;
//   final bool implyLeading;
//   final Widget trailingBtn;
//   final bool showLeading;
//   final Widget leading;
//   final bool appbarTransparent;
//   final Color appbarBgColor;
//   final Color appbarTextColor;
//   final bool centerTitle;
//   final bool scaffoldTransparent;

//   ScreenFrame(
//       {this.bgImage,
//       this.bgColorOverlay,
//       this.backAction,
//       this.horizontalPadding = 20,
//       this.title,
//       this.implyLeading = true,
//       this.showLeading = true,
//       this.leading,
//       this.trailingBtn,
//       this.appbarTransparent = false,
//       this.appbarBgColor,
//       this.appbarTextColor,
//       this.centerTitle = false,
//       this.scaffoldTransparent = false,
//       @required this.child});

//       @override
//       Widget build(BuildContext context) {
//         final Widget lead = showLeading
//         ?
//           leading != null 
//           ? leading 
//           : GestureDetector(
//             onTap: () => Navigator.pop(context),
//             child: Icon(Icons.keyboard_arrow_left, size: 33, color: appbarTextColor != null ? appbarTextColor : Color(0xfff1f1f1)),
//           )
//         : null;

//         return 
//         Scaffold(
//           backgroundColor: scaffoldTransparent ? Colors.transparent : null,
//           body:SizedBox.expand(
//             child: Container(
//             decoration: BoxDecoration(
//               image: bgImage != null 
//                 ? DecorationImage(
//                     image: AssetImage(bgImage),
//                     fit: BoxFit.cover,
//                     colorFilter: bgColorOverlay != null ? ColorFilter.mode(bgColorOverlay.withOpacity(0.9), BlendMode.srcATop) : null,
//                     alignment: Alignment.center
//                   )
//                 : null,
//             ),
            
//             child: Scaffold(
//               backgroundColor: Colors.transparent,
//               appBar: title != null
//                 ? AppBar(
//                     centerTitle: centerTitle,
//                     automaticallyImplyLeading: implyLeading,
//                     leading: lead,
//                     backgroundColor: appbarTransparent ? Colors.transparent : appbarBgColor != null ? appbarBgColor : Colors.black87,
//                     elevation: 0,
//                     title: Text(
//                       title,
//                       style: Theme.of(context).textTheme.headline5.copyWith(color: appbarTextColor ?? Colors.white, fontSize: 22)
//                     ),
//                     actions: trailingBtn != null ? <Widget>[trailingBtn] : null
//                   )
//                 : null,
                
//               body: SafeArea(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 0),
//                   child: InkWell(
//                     focusColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     splashColor: Colors.transparent,
//                     onTap: () {
//                       FocusScope.of(context).requestFocus(new FocusNode());
//                     },
//                     child: SingleChildScrollView(
//                       child: child
//                     ),
//                   ),
//                 ),
//               ),
//               ),
//             ),
//           ));
//       }
// }








import 'package:flutter/material.dart';

class ScreenFrame extends StatelessWidget {
  final String title;
  final String bgImage;
  final Color bgColorOverlay;
  final double horizontalPadding;
  final Function backAction;
  final Widget child;
  final bool implyLeading;
  final Widget trailingBtn;
  final bool showLeading;
  final Widget leading;
  final bool appbarTransparent;
  final Color appbarBgColor;
  final Color appbarTextColor;
  final bool centerTitle;
  final bool scaffoldTransparent;

  ScreenFrame(
    {this.bgImage,
    this.bgColorOverlay,
    this.backAction,
    this.horizontalPadding = 20,
    this.title,
    this.implyLeading = true,
    this.showLeading = true,
    this.leading,
    this.trailingBtn,
    this.appbarTransparent = false,
    this.appbarBgColor,
    this.appbarTextColor,
    this.centerTitle = false,
    this.scaffoldTransparent = false,
    @required this.child});

    @override
    Widget build(BuildContext context) {

      return Scaffold(
        appBar: title != null
          ? AppBar(
              centerTitle: centerTitle,
              automaticallyImplyLeading: implyLeading,
              // leading: lead,
              // backgroundColor: appbarTransparent ? Colors.transparent : appbarBgColor != null ? appbarBgColor : Colors.black87,
              elevation: 0,
              title: Padding(
                padding: EdgeInsets.only(left: implyLeading ? 0 : 15.0),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 22)
                ),
              ),
              actions: trailingBtn != null ? <Widget>[trailingBtn] : null
            )
          : null,
          body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 0),
            child: InkWell(
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              child: SingleChildScrollView(
                child: child
              ),
            ),
          ),
        ),
      );
    }
}





