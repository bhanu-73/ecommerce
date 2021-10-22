// import 'package:ecommerce/screens/register.dart';
// import 'package:ecommerce/util/validator.dart';
// import 'package:ecommerce/values/values.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// //   const AuthSignInPage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Firebase AUthentication'),
// //       ),
// //       body: FutureBuilder(
// //         future: _intializeFirebase(),
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.done) {
// //             return Column(
// //               children: [
// //                 Text('Login'),
// //               ],
// //             );
// //           }
// //           return Center(
// //             child: CircularProgressIndicator(),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// class AuthSignInPage extends StatefulWidget {
//   // const AuthSignInPage({Key? key}) : super(key: key);

//   @override
//   _AuthSignInPageState createState() => _AuthSignInPageState();
// }

// class _AuthSignInPageState extends State<AuthSignInPage> {
//   final _formKey = GlobalKey<FormState>();

//   final _emailText = TextEditingController();
//   final _passwordText = TextEditingController();

//   final _focusEmail = FocusNode();
//   final _focusPassword = FocusNode();

//   bool _isProcessing = false;

//   Future<FirebaseApp> _intializeFirebase() async {
//     FirebaseApp firebaseApp = await Firebase.initializeApp();
//     return firebaseApp;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         _focusEmail.unfocus();
//         _focusPassword.unfocus();
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Firebase AUthentication'),
//         ),
//         body: FutureBuilder(
//           future: _intializeFirebase(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.done) {
//               return Padding(
//                 padding: const EdgeInsets.only(
//                     left: Sizes.PADDING_24, right: Sizes.PADDING_24),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: Sizes.PADDING_24),
//                       child: Text(
//                         'Login',
//                         style: Theme.of(context).textTheme.headline1,
//                       ),
//                     ),
//                     Form(
//                       key: _formKey,
//                       child: Column(
//                         children: <Widget>[
//                           TextFormField(
//                             controller: _emailText,
//                             focusNode: _focusEmail,
//                             validator: (value) =>
//                                 Validator.validateEmail(email: value),
//                             decoration: InputDecoration(
//                               hintText: 'Email',
//                               errorBorder: UnderlineInputBorder(
//                                 borderRadius: BorderRadius.circular(7.0),
//                                 borderSide: BorderSide(
//                                   color: Colors.red,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: Sizes.HEIGHT_10,
//                           ),
//                           TextFormField(
//                             controller: _passwordText,
//                             focusNode: _focusPassword,
//                             validator: (value) =>
//                                 Validator.validatePassword(password: value),
//                             decoration: InputDecoration(
//                               hintText: 'Password',
//                               errorBorder: UnderlineInputBorder(
//                                 borderRadius: BorderRadius.circular(7.0),
//                                 borderSide: BorderSide(
//                                   color: Colors.red,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: Sizes.HEIGHT_10,
//                           ),
//                           _isProcessing
//                               ? CircularProgressIndicator()
//                               : Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Expanded(
//                                       child: ElevatedButton(
//                                         onPressed: () async {
//                                           _focusEmail.unfocus();
//                                         },
//                                         child: Text(
//                                           'Sign In',
//                                           style: TextStyle(color: Colors.white),
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 24.0,
//                                     ),
//                                     Expanded(
//                                       child: ElevatedButton(
//                                         onPressed: () {
//                                           Navigator.of(context).push(
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   RegisterPage(),
//                                             ),
//                                           );
//                                         },
//                                         child: Text('Register'),
//                                       ),
//                                     )
//                                   ],
//                                 )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             }
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
