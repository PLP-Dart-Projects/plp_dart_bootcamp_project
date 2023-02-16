import 'package:flutter/material.dart';
import 'package:login_signup/components/common/custom_input_field.dart';
import 'package:login_signup/components/common/page_header.dart';

import 'package:login_signup/components/signup_page.dart';

import 'package:login_signup/components/common/page_heading.dart';

import 'package:login_signup/services/authentication.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEEF1F3),
        body: Column(
          children: [
            const PageHeader(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const PageHeading(
                          title: 'Log-in',
                        ),
                        CustomInputField(
                          labelText: 'Email',
                          hintText: 'Your email id',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email is required!';
                            }

                            return null;
                          },
                          onSaved: (value) => _email = value!,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CustomInputField(
                          labelText: 'Password',
                          hintText: 'Your password',
                          obscureText: true,
                          suffixIcon: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password is required!';
                            }
                            return null;
                          },
                          onSaved: (value) => _password = value!,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: size.width * 0.80,
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            // onTap: () => {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) =>
                            //               const ForgetPasswordPage()))
                            // },
                            child: const Text(
                              'Forget password?',
                              style: TextStyle(
                                color: Color(0xff939393),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              Authentication().signInWithEmailAndPassword(
                                  _email!, _password!, context);
                            }
                          },
                          child: const Text('Log In'),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        SizedBox(
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Don\'t have an account ? ',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff939393),
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignupPage()))
                                },
                                child: const Text(
                                  'Sign-up',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff748288),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
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
