import 'package:flutter/material.dart';
import 'package:my_chords/ui/shared/playlist_card.dart';
import 'package:my_chords/ui/shared/screen_frame.dart';

class CollectionScreen extends StatefulWidget {
  CollectionScreen() : super();

  @override
  Collection createState() => Collection();
}

class Collection extends State<CollectionScreen> {
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

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            SizedBox(height: sh * 0.01,),
            Text('Collections', style: Theme.of(context).textTheme.headline3 ,),
            
            ...List.generate(20, (i) => TrackCard())
          ]
        ),

      );
  }
}
