import 'package:flutter/material.dart';
import 'package:flutter_udemy/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailControl = TextEditingController();

  var passwordControl = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPasswordShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                      controller: emailControl,
                      label: 'Email',
                      type: TextInputType.emailAddress,
                      prefix: Icons.email,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'email address must nor be empty';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                      controller: passwordControl,
                      label: 'Password',
                      type: TextInputType.visiblePassword,
                      prefix: Icons.lock,
                      suffix: isPasswordShow ?Icons.visibility_off: Icons.visibility,
                      isPassword: isPasswordShow,
                      sufixPressed: () {
                        setState(() {
                          isPasswordShow = !isPasswordShow;
                        });
                      },
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'password must nor be empty';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    function: () {
                      {
                        if (formKey.currentState.validate()) {
                          // Control Form TextFormFiled
                          print(emailControl.text);
                          print(passwordControl.text);
                        }
                      }
                    },
                    text: 'login',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont\t have account?'),
                      TextButton(
                        onPressed: () {},
                        child: Text('Register Now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
