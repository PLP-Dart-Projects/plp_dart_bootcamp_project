import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:login_signup/components/common/page_header.dart';
import 'package:login_signup/components/common/page_heading.dart';
import 'package:login_signup/components/homepage.dart';

import 'package:login_signup/components/common/custom_input_field.dart';
import 'package:login_signup/services/authentication.dart';

// ignore: use_key_in_widget_constructors
class SignupPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEEF1F3),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const PageHeader(),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const PageHeading(
                        title: 'Sign-up',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      CustomInputField(
                        labelText: 'First Name',
                        hintText: 'First Name',
                        isDense: true,
                        validator: (textValue) {
                          if (textValue == null || textValue.isEmpty) {
                            return 'Name field is required!';
                          }
                          return null;
                        },
                        onSaved: (value) => _email = value!,
                      ),
                      CustomInputField(
                        labelText: 'Last Name',
                        hintText: 'Last Name',
                        isDense: true,
                        validator: (textValue) {
                          if (textValue == null || textValue.isEmpty) {
                            return 'Name field is required!';
                          }
                          return null;
                        },
                        onSaved: (value) => _email = value!,
                      ),
                      CustomInputField(
                        labelText: 'Email',
                        hintText: 'Your email id',
                        isDense: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is required!';
                          }
                          // if (!EmailValidator.validate(textValue)) {
                          //   return 'Please enter a valid email';
                          // }
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
                        isDense: true,
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required!';
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value!,
                        suffixIcon: true,
                      ),
                      CustomInputField(
                        labelText: 'Password',
                        hintText: 'Confirm password',
                        isDense: true,
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required!';
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value!,
                        suffixIcon: true,
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Authentication().signUpWithEmailAndPassword(
                                _email!, _password!, context);
                          }
                        },
                        child: const Text('Sign Up'),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account ? ',
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
                                        builder: (context) => HomePage()))
                              },
                              child: const Text(
                                'Log-in',
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
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void _handleSignupUser() {
  //   // signup user
  //   if (_formKey.currentState!.validate()) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text('Submitting data..')),
  //     );
  //   }
  // }
}
