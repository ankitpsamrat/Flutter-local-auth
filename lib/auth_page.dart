// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:project/home_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //

  bool? _hasBioSensor;

  LocalAuthentication authentication = LocalAuthentication();

  Future<void> _checkBio() async {
    try {
      _hasBioSensor = await authentication.canCheckBiometrics;
      print(_hasBioSensor);
      if (_hasBioSensor!) {
        _getAuth();
      }
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<void> _getAuth() async {
    bool isAuth = false;

    //loaded a dialog to scan fingerprint
    try {
      isAuth = await authentication.authenticate(
        localizedReason: 'Scan your finger print to access the app',
        options: const AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );

      //  check fingerprint scan and then navigate user to HomePage
      if (isAuth) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (builder) => const HomePage(),
          ),
        );
      }
      print(isAuth);
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    //  call checkBio method when app launch
    _checkBio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Local Fingerprint Auth',
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                _checkBio();
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.green,
              ),
              child: const Text('Check Auth'),
            ),
          ),
        ],
      ),
    );
  }
}
