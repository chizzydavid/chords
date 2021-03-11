import 'package:flutter/material.dart';

class SocialAuthIcons extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: <Widget>[
          Text('OR'),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[ 
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal:25, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffDB4437),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Text('Google', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal:25, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xff3B5998),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Text('Facebook', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
        ],
      );
  }


  loginUser(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('hello hi'),));
  }
}
