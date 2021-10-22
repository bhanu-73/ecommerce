// import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_core/firebase_core.dart';

// class FireBaseAuth {
//   // for newly registering users
//   static Future<User?> registerWithEmailPassword(
//       {required String name,
//       required String email,
//       required String password}) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;

//     try {
//       UserCredential userCredential = await auth.createUserWithEmailAndPassword(
//           email: email, password: password);

//       user = userCredential.user;
//       // await user!.updateProfile(displayName: name);
//       await user!.updateDisplayName(name);
//       await user.reload();
//       user = auth.currentUser;
//     } on FirebaseAuthException catch (err) {
//       if (err.code == 'weak-password') {
//         print('Your password is so weak, try setting up even stronger');
//       } else if (err.code == 'email-already-in-use') {
//         print('Email has already registered!');
//       }
//     } catch (err) {
//       print(err);
//     }
//     return user;
//   }

//   // Signin For Existing users
//   static Future<User?> signInWithEmailPassword(
//       {required String email, required String password}) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;

//     try {
//       UserCredential userCredential = await auth.createUserWithEmailAndPassword(
//           email: email, password: password);

//       user = userCredential.user;
//     } on FirebaseAuthException catch (err) {
//       if (err.code == 'user-not-found') {
//         print('no user available with this email!');
//       } else if (err.code == 'wrong-password') {
//         print('you have entered Wrong Password!');
//       }
//     } catch (err) {
//       print(err);
//     }
//     return user;
//   }

//   static Future<User?> refreshUser(User user) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     await user.reload();
//     User? refreshedUser = auth.currentUser;

//     return refreshedUser;
//   }
// }
