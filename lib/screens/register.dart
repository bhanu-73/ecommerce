import 'package:ecommerce/widgets/dropDownFormField.dart';
import 'package:ecommerce/widgets/dropdownWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(backgroundColor: Colors.transparent),
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, top: 30),
                  child: Text(
                    'Register Here!',
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
                SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 30, right: 30),
                                child: Column(
                                  children: [
                                    TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: 'First Name',
                                          filled: true,
                                          fillColor: Colors.grey.shade100,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: 'Email',
                                          filled: true,
                                          fillColor: Colors.grey.shade100,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: 'Password',
                                          filled: true,
                                          fillColor: Colors.grey.shade100,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    DropDownFormWidget(),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    DropDownWidget(),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: 'Confirm Password',
                                          filled: true,
                                          fillColor: Colors.grey.shade100,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Sign Up',
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        CircleAvatar(
                                            radius: 30,
                                            backgroundColor: Colors.blueAccent,
                                            child: IconButton(
                                              onPressed: () {},
                                              color: Colors.white,
                                              icon: Icon(Icons.arrow_forward),
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, 'login');
                                            },
                                            child: Text(
                                              'Sign In',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  decoration:
                                                      TextDecoration.underline),
                                            )),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        )))
              ],
            )));
  }
}


/* 
email:
____________(example@demo.com)

password:
-----------(*********)
*/