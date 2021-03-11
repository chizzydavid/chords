import 'package:flutter/material.dart';
import 'package:my_chords/ui/screens/dashboard.dart';
import 'package:my_chords/ui/screens/forgot_password.dart';
import 'package:my_chords/ui/screens/signup.dart';
import 'package:my_chords/ui/shared/screen_frame.dart';
import 'package:my_chords/ui/shared/button.dart';
import 'package:my_chords/ui/shared/social_auth.dart';
import 'package:my_chords/ui/shared/text_input.dart';


class LoginScreen extends StatefulWidget {
  // final String userMobileNumber;
  LoginScreen() : super();

  @override
  Login createState() => Login();
}

class Login extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String userFirstName;
  String userMobileNumber;
  TextEditingController pinController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String dialCode;

  loadUserData() async {
    // SharedPreferences _prefs = await SharedPreferences.getInstance();

    // setState(() {
    //   userFirstName = _prefs.getString('userFirstName');
    //   userMobileNumber =
    //       widget.userMobileNumber ?? _prefs.getString('mobileNumber');
    //   phoneController.text = userMobileNumber ?? '';
    // });
  }

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  @override
  Widget build(BuildContext context) {

    return ScreenFrame(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal:15, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Theme.of(context).accentColor, width: 2))
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal:15, vertical: 10),
                  child: Text('Sign Up', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],),

            SizedBox(height: MediaQuery.of(context).size.height * 0.15,),

            Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  CHTextInput(
                    placeholder: 'Email Address',
                    obscureText: false,
                    inputType: TextInputType.text,
                    // validator: LoginValidators().pin,
                    controller: phoneController,
                  ),

                  CHTextInput(
                    placeholder: 'Password',
                    obscureText: true,
                    inputType: TextInputType.text,
                    // validator: LoginValidators().pin,
                    controller: pinController,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),

            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(height: 40,),
            Builder(
              builder: (context) =>
              Button(
                'Login',
                // width: MediaQuery.of(context).size.width * 0.72,
                onPressedAction: ()  {
                  // if (formKey.currentState.validate()) {}
                  loginUser(context);
                },
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                },
                child: Text(
                  'Don\'t have an account? Sign Up',
                  style: TextStyle(
                    // color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(height: 30),

            SocialAuthIcons(),
          ]),

      );
  }

  // loginUser({LoginAuthRequest req}) async {
  //   dynamic result = await Provider.of<AuthProvider>(context, listen: false)
  //       .authenticateUser(
  //           authReq: req ??
  //               LoginAuthRequest(
  //                 mobileNumber: userMobileNumber,
  //                 pin: pinController.text,
  //               ));

  //   if (result is bool) {
  //     Navigator.pushReplacementNamed(context, 'dashboard');
  //   } else {
  //     showErrorToast(result);
  //     print('error on sign up request $result');
  //   }
  // }

  loginUser(BuildContext context) {
    // Scaffold.of(context).showSnackBar(SnackBar(content: Text('hello hi'),));
    Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen(),));

  }
}
