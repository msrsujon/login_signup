import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/images/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 110),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SingleChildScrollView(
              child: Form(
                key: _fromKey,
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Email',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(30)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        validator: (String? value) {
                          if (value?.isEmpty ?? true) {
                            return 'Enter Your email';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.green)),
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.center,
                              backgroundColor: Color(0xff68caf0),
                              foregroundColor: Color(0xffffffff),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.white)),
                            ),
                            onPressed: () {
                              // Navigator.pushNamed(context, 'home_page');
                              // String email = _emailController.text;
                              // String password = _passwordController.text;
                              // if (email.isNotEmpty && password.isNotEmpty) {
                              //   print('Long In Success');
                              // } else {
                              //   print('Log In failed');
                              // }
                              if (_fromKey.currentState!.validate()) {
                                print('Long In Success');
                                MySnackBar('Login success', context);
                                Navigator.pushNamed(context, 'home_page');
                              }
                            },
                            child: Text('Sign In'),
                          ),
                          // Text('Sign In'),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'registration');
                            },
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff4c505b),
                                fontSize: 18,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'forgotPass');
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff4c505b),
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
