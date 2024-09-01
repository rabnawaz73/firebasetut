import 'package:firebasetut/OTP_Verification/optpScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  var phonenumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(
          controller: phonenumber,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Phone Number',
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () async {
            print('button pressed');
            await FirebaseAuth.instance.verifyPhoneNumber(
              phoneNumber: '+92${phonenumber.text}',
              verificationCompleted: (PhoneAuthCredential credential) async {
                
              },
              verificationFailed: (FirebaseAuthException e) {

              },
              codeSent: (String verificationId, int? resendToken) {
                print('doing work');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OTPAuth(
                            verificationId: verificationId,
                          )),
                );
              },
              codeAutoRetrievalTimeout: (String verificationId) {},
            );
          },
          child: const Text('Submit'),
        ),
      ]),
    );
  }
}
