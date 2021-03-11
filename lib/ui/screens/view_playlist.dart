import 'package:flutter/material.dart';
import 'package:my_chords/ui/shared/playlist_card.dart';
import 'package:my_chords/ui/shared/screen_frame.dart';
import 'package:my_chords/utils/assets.dart';

class ViewPlaylistScreen extends StatefulWidget {
  ViewPlaylistScreen() : super();

  @override
  ViewPlaylist createState() => ViewPlaylist();
}

class ViewPlaylist extends State<ViewPlaylistScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;


    return ScreenFrame(
        horizontalPadding: 0,
        child: Column(
          children: <Widget>[

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.CAROUSEL_ONE),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Theme.of(context).primaryColor.withOpacity(0.78), BlendMode.srcATop),
                alignment: Alignment.center
              )
            ),
            height: sh * 0.35,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ListTile(
                  leading: GestureDetector(
                    onTap: () { Navigator.pop(context); },
                    child: Icon(Icons.arrow_back, size: 23, color: Colors.white),
                  )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: sw * 0.05, vertical: sh * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Rows of Passion',
                        style: TextStyle(color: Colors.white, fontSize:20),
                      ),
                      SizedBox(height: sh * 0.014,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('30 Songs', style: TextStyle(color: Colors.white,),),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top:4.0, right: 5),
                                child: Icon(Icons.access_time, size: 16,),
                              ),
                              Text('78:90', style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                      ],),
                      Padding(
                        padding: EdgeInsets.only(top: sh * 0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                playlistActionBtn(Theme.of(context).accentColor, 'Play', Icons.play_arrow, false),
                                SizedBox(width: sw * 0.03,),
                                playlistActionBtn(Colors.transparent, 'Share', Icons.share, true),
                              ],
                            ),
                            
                            Icon(Icons.favorite_border, size: 22,),
                        ],),
                      )

                    ],
                  ),
                ),
              ],
            )
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
            child: Column(children: <Widget>[
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),
              TrackCard(),

            ],),
          )
          ]
        ),

      );
  }

  Widget playlistActionBtn(Color color, String label, IconData icon, bool showBorder) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:10, vertical: 3),
      decoration: BoxDecoration(
        color: color,
        border: showBorder ? Border.all(color: Colors.white, width: 1) : null,
        borderRadius: BorderRadius.all(Radius.circular(14))

      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom:2.0, right: 5),
            child: Icon(icon, size: 16,),
          ),
          Text(label, style: TextStyle(color: Colors.white, fontSize: 13),),
        ],
      ),
    );


    // return Button(
    //   label,
    //   bgColor: color,
    //   padding: 0,
    //   icon: icon,
    //   borderColor: showBorder ? Colors.white : null,
    //   borderSize: showBorder ? 1 : null,
    //   onPressedAction: () {},
    // );
  }
}
