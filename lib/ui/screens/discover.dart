import 'package:flutter/material.dart';
import 'package:my_chords/ui/screens/play_track.dart';
import 'package:my_chords/ui/shared/bottom_sheet.dart';
import 'package:my_chords/ui/shared/playlist_card.dart';
import 'package:my_chords/ui/shared/screen_frame.dart';
import 'package:my_chords/ui/shared/text_input.dart';
import 'package:my_chords/utils/assets.dart';


class DiscoverScreen extends StatefulWidget {
  DiscoverScreen() : super();

  @override
  Discover createState() => Discover();
}

class Discover extends State<DiscoverScreen> {
  final formKey = GlobalKey<FormState>();
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
        centerTitle: true,
        implyLeading: false,
        trailingBtn: Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(Icons.search),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: sh * 0.01,),
            Text('Discover', style: Theme.of(context).textTheme.headline3 ,),

            Padding(
              padding: EdgeInsets.symmetric(vertical: sh * 0.015),
              child: CHTextInput(
                placeholder: 'Search Keyword',
                inputType: TextInputType.text,
                onChanged: (v) { },
                prefixIcon:  Icon(Icons.search, size: 20,),
                horizontalFieldPadding: 0,
                verticalFieldPadding: 0,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Trending Playlists', style: TextStyle(fontSize: 17),),

                  Text('View All', style: TextStyle(color: Theme.of(context).accentColor),)
                ],
              ),
            ),
            Container(
              height: sh * 0.36,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ...List.generate(8, (i) => PlaylistCard()),
                ],
              ),
            ),

            SizedBox(height: sh * 0.04,),

            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Popular Songs', style: TextStyle(fontSize: 17),),
                  Text('View All', style: TextStyle(color: Theme.of(context).accentColor),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: sh * 0.03),
              child: Container(
                height: sh * 0.23,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ...List.generate(7, (i) => popularTrack()),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('My Playlists', style: TextStyle(fontSize: 17),),
                  IconButton(
                    icon: Icon(Icons.add), 
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      createPlaylist();
                    },
                  
                  )
                ],
              ),
            ),


            Container(
              width: sw,
              padding: EdgeInsets.only(left: 15),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 30,
                children: <Widget>[
                  ...List.generate(7, (i) => PlaylistCard()),
                ],
              ),
            ),
            SizedBox(height: sh * 0.1,),

          ]
        ),
      );
  }


  Widget popularTrack() {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PlayTrackScreen(),)),
      splashColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(right: sw * 0.07),
        width: sw * 0.221, // TODO: width stretches on nexus emulator
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: sh * 0.1137,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Assets.CAROUSEL_ONE),
                ),
                shape: BoxShape.circle
              ),
            ),          
            SizedBox(height: sh * 0.015),

            Text(
              'James Blunt',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: sh * 0.007,),
            Text(
              'A night to remember',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void createPlaylist() {
    AppBottomSheet.show(context: context, content: Text('adding new playlist '));
  }
}

