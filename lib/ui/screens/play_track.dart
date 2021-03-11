import 'package:flutter/material.dart';
import 'package:my_chords/ui/shared/screen_frame.dart';
import 'package:my_chords/utils/assets.dart';


class PlayTrackScreen extends StatefulWidget {
  PlayTrackScreen() : super();

  @override
  PlayTrack createState() => PlayTrack();
}

class PlayTrack extends State<PlayTrackScreen> {
  double sh;
  double sw;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    sh = MediaQuery.of(context).size.height;
    sw = MediaQuery.of(context).size.width;
    
    return ScreenFrame(
        title: 'Now Playing',
        centerTitle: true,
        trailingBtn: Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(Icons.more_vert),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,          
          children: <Widget>[
            SizedBox(height: sh * 0.02,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: sw * 0.07),
              child: Container(
                height: sh * 0.47,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Assets.CAROUSEL_ONE),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
              ), 

            ),

            Padding(
              padding: EdgeInsets.only(top: sh * 0.03, bottom: sh * 0.01),
              child: Text(
                'Rows of Passion',
                style: TextStyle(color: Colors.white, fontSize:17, fontWeight: FontWeight.bold),
              ),
            ),
            Text('John Bellion', style: TextStyle(color: Colors.white,),),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: sw * 0.02, vertical: sh * 0.027),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('1:01'),
                  Expanded(
                    child: Slider(
                      value: .3,
                      onChanged: (value) { print('love life ((((9 $value'); },
                      activeColor: Theme.of(context).accentColor,
                    ),
                  ),
                  Text('4:09'),
              ],),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: sw * 0.13, vertical: sh * 0.017),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  controlBtn(Icons.skip_previous, () {}),
                  controlBtn(Icons.play_arrow, () {}),
                  controlBtn(Icons.skip_next, () {})
              ],),
            ),

            SizedBox(height: sh * 0.8,),

          ]
        ),

      );
  }

  Widget controlBtn(IconData icon, Function onPress) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1.2)
        ),
        child: Icon(icon, size: 26)
      )
    );
  }
}
