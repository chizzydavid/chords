import 'package:flutter/material.dart';
import 'package:my_chords/ui/shared/screen_frame.dart';
import 'package:my_chords/ui/shared/button.dart';
import 'package:my_chords/ui/shared/text_input.dart';


class ResetPasswordScreen extends StatefulWidget {
  ResetPasswordScreen() : super();

  @override
  ResetPassword createState() => ResetPassword();
}

class ResetPassword extends State<ResetPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController pinController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return ScreenFrame(
        title: 'Reset Password',
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
                    placeholder: 'Password',
                    obscureText: true,
                    inputType: TextInputType.text,
                    // validator: LoginValidators().pin,
                    controller: pinController,
                  ),

                  CHTextInput(
                    placeholder: 'Password',
                    obscureText: true,
                    inputType: TextInputType.text,
                    // validator: LoginValidators().pin,
                    controller: pinController,
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
            SizedBox(height: 40,),
            Builder(
              builder: (context) =>
              Button(
                'Reset Password',
                // width: MediaQuery.of(context).size.width * 0.72,
                onPressedAction: ()  {
                  // if (formKey.currentState.validate()) {}
                  loginUser(context);
                },
              ),
            ),
            SizedBox(height: 30),

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
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('hello hi'),));

  }
}
