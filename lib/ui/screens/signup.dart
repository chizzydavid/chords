import 'package:flutter/material.dart';
import 'package:my_chords/ui/screens/login.dart';
import 'package:my_chords/ui/shared/screen_frame.dart';
import 'package:my_chords/ui/shared/button.dart';
import 'package:my_chords/ui/shared/social_auth.dart';
import 'package:my_chords/ui/shared/text_input.dart';

class SignUpScreen extends StatefulWidget {
  // final String userMobileNumber;
  SignUpScreen() : super();

  @override
  SignUp createState() => SignUp();
}

class SignUp extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  String userFirstName;
  String userMobileNumber;
  TextEditingController pinController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String dialCode;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return ScreenFrame(
        child: Builder(
          builder: (context) =>
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },                            
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal:15, vertical: 10),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal:15, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Theme.of(context).accentColor, width: 2))
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
                  Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[

                        CHTextInput(
                          placeholder: 'First name',
                          obscureText: false,
                          inputType: TextInputType.text,
                          // validator: LoginValidators().pin,
                          controller: phoneController,
                        ),

                        CHTextInput(
                          placeholder: 'Last name',
                          obscureText: false,
                          inputType: TextInputType.text,
                          // validator: LoginValidators().pin,
                          controller: phoneController,
                        ),

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


                        CHTextInput(
                          placeholder: 'Confirm Password',
                          obscureText: true,
                          inputType: TextInputType.text,
                          // validator: LoginValidators().pin,
                          controller: pinController,
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Button(
                    'Sign Up',
                    // width: MediaQuery.of(context).size.width * 0.72,
                    onPressedAction: ()  {
                      // if (formKey.currentState.validate()) {}
                      loginUser(context);
                    },
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },
                      child: Text(
                        'Already have an account? Login',
                        style: TextStyle(
                          // color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SocialAuthIcons()

                ]),

      ),
    );
  }

  loginUser(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('hello hi'),));
  }
}
