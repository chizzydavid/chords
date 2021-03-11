import 'package:flutter/material.dart';
import 'package:my_chords/ui/screens/reset_password.dart';
import 'package:my_chords/ui/shared/screen_frame.dart';
import 'package:my_chords/ui/shared/button.dart';
import 'package:my_chords/ui/shared/text_input.dart';


class ForgotPasswordScreen extends StatefulWidget {
  // final String userMobileNumber;
  ForgotPasswordScreen() : super();

  @override
  ForgotPassword createState() => ForgotPassword();
}

class ForgotPassword extends State<ForgotPasswordScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      title: 'Forgot Password',
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),

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
                    // controller: phoneController,
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),
            Builder(
              builder: (context) =>
              Button(
                'Submit',
                // width: MediaQuery.of(context).size.width * 0.72,
                onPressedAction: ()  {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
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
}
