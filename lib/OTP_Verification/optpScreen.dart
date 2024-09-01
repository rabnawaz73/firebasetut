import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class OTPAuth extends StatefulWidget {
  String verificationId;
  OTPAuth({super.key, required this.verificationId});

  @override
  State<OTPAuth> createState() => _OTPAuthState();
}

class _OTPAuthState extends State<OTPAuth> with SingleTickerProviderStateMixin {
  TextEditingController otp_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter OTP",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  PhoneAuthCredential credential =
                      await PhoneAuthProvider.credential(
                          verificationId: widget.verificationId,
                          smsCode: otp_controller.text.toString());
                  FirebaseAuth.instance.signInWithCredential(credential);
                  Navigator.pop(context);
                } catch (e) {
                  throw Exception(e.toString());
                }
              },
              child: const Text('verify'),
            ),
          ],
        ),
      ),
    );
  }
}
