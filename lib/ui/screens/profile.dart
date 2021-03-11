import 'package:flutter/material.dart';
import 'package:my_chords/ui/shared/bottom_sheet.dart';
import 'package:my_chords/ui/shared/screen_frame.dart';
import 'package:my_chords/ui/shared/button.dart';
import 'package:my_chords/utils/assets.dart';


class ProfileScreen extends StatefulWidget {
  ProfileScreen() : super();

  @override
  Profile createState() => Profile();
}

class Profile extends State<ProfileScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController pinController = TextEditingController();
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: sh * 0.02),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Profile', style: Theme.of(context).textTheme.headline3 ,)
              ),
            ),

            CircleAvatar(
              backgroundImage: AssetImage(Assets.CAROUSEL_ONE),
              radius: 85,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025,),
            Padding(
              padding: EdgeInsets.only(bottom:8.0),
              child: Text(
                'James Corden',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text('Music is the soul I live by',),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            
            settingsItem(
              'About',
              // preview: Text('N/A', style: TextStyle(fontWeight: FontWeight.bold),)
            ),
            settingsItem(
              'Privacy Policy',
              // preview: Text('N/A', style: TextStyle(fontWeight: FontWeight.bold),)
            ),
            settingsItem(
              'Terms and Conditions',
              // preview: Text('N/A', style: TextStyle(fontWeight: FontWeight.bold),)
            ),                        
            SizedBox(height: 40,),
            Builder(
              builder: (context) =>
              Button(
                'Logout',
                // width: MediaQuery.of(context).size.width * 0.72,
                onPressedAction: ()  {
                  // if (formKey.currentState.validate()) {}
                  // loginUser(context);
                  confirmLogout();
                },
              ),
            ),
            SizedBox(height: 30),

          ]),

      );
  }

  loginUser(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('hello hi'),));

  }

  Widget settingsItem(String title,
      {Widget preview,
      dynamic actionIcon = Icons.keyboard_arrow_right,
      dynamic action}) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Text(title,
                        style:
                            TextStyle(color: Color(0XFF777777), fontSize: 15))),
                if (preview != null)
                  Expanded(
                      child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: preview,
                          ),
                          onTap: () {
                            if (action is Widget)
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => action));
                          })),
                if (actionIcon is Widget) actionIcon,
                if (actionIcon is IconData)
                  IconButton(
                    icon: Icon(
                      actionIcon,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                    onPressed: () {
                      if (action is Widget)
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => action));
                    },
                  ),
              ],
            ),
          ),
          // Divider(
          //   color: Color(0xffDDDDDD),
          //   height: 10,
          //   thickness: 0.5,
          // ),
        ],
      ),
    );
  }


  void showLogoutModal() async {
    // Modal.showModal(
    //   context: context,
    //   contentPadding: 25.0,
    //   tapOutToDismiss: true,
    //   title: 'Are you sure you want to logout?',
    //   content: Padding(
    //     padding: EdgeInsets.all(8.0),
    //     child: Center(
    //       child: Text(
    //         'This will sign you out of your account',
    //         style: TextStyle(
    //           color: Colors.grey[700],
    //         ),
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //   ),
    //   confirmBtnText: 'Yes, log me out',
    //   confirmTextColor: Colors.red[800],
    //   confirmBtnCallback: () => Logout().logOut(context, user.username),
    //   cancelBtnText: 'No, go back',
    //   cancelTextColor: Colors.black,
    //   cancelBtnCallback: () => Navigator.pop(context),
    // );
  }

  void confirmLogout() {
    AppBottomSheet.show(context: context, content: Text('Live Laugh Loveeee'));
  }


}







// image.sysdir.1 = system-images\android-30\google_apis\x86\  
// image.sysdir.1 = system-images\android-30\google_apis_playstore\x86\

// tag.id=google_apis  >   tag.id=google_apis_playstore