import 'package:flutter/material.dart';
import 'package:my_chords/ui/screens/play_track.dart';
import 'package:my_chords/ui/screens/view_playlist.dart';
import 'package:my_chords/utils/assets.dart';


class PlaylistCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    
    return InkWell(
      splashColor: Colors.transparent,      
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ViewPlaylistScreen(),)),
          child: Container(
        margin: EdgeInsets.only(right: 15),
        width: sw * 0.36,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: sh * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Assets.CAROUSEL_ONE),
                ),
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
            ),          
            SizedBox(height: sh * 0.017,),

            Text(
              'Workouts',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1,),
            Text(
              'Vibe to fitness music',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

}

class TrackCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // double sh = MediaQuery.of(context).size.height;
    // double sw = MediaQuery.of(context).size.width;
    
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PlayTrackScreen(),)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:0, vertical: 3),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
          leading: Container( 
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.CAROUSEL_ONE),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Text('Sound of Water', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
          subtitle: Text(
            'Johny Walker',
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.favorite, size: 17),
                SizedBox(width: 5,),
                Icon(Icons.more_vert, size: 17)
              ],
            ),
          ),
        ),
      ),
    );
  }


}