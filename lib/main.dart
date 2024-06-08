import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (UniversalPlatform.isAndroid || UniversalPlatform.isWeb) {
      return const MaterialApp(
        home: MaterialLoginScreen(),
        debugShowCheckedModeBanner: false,
      );
    } else if (UniversalPlatform.isIOS) {
      return const CupertinoApp(
        home: CupertinoLoginScreen(),
      );
    } else {
      return const MaterialApp(
        home: MaterialLoginScreen(),
        debugShowCheckedModeBanner: false,
      );
    }
  }
}

// Vista en estilo Android/web
class MaterialLoginScreen extends StatelessWidget {
  const MaterialLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 237, 237),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/logo.png',
                  height: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'SIMPLE',
                  style: TextStyle(
                      fontFamily: 'roboto', fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Passphrase',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 100.0),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Reset your passphrase?',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 145, 145, 145)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Vista en estilo iOS
class CupertinoLoginScreen extends StatelessWidget {
  const CupertinoLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: SizedBox(
          width: 300,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: CupertinoColors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 25),
                const Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'dancingscript',
                      fontSize: 45,
                      color: CupertinoColors.black),
                ),
                const SizedBox(height: 25),
                CupertinoTextField(
                  placeholder: 'Username',
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey4,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  style: TextStyle(
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 16),
                CupertinoTextField(
                  placeholder: 'Password',
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey4,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  obscureText: true,
                  style: TextStyle(
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 16),
                CupertinoButton(
                  onPressed: () {},
                  color: CupertinoColors.systemPurple,
                  borderRadius: BorderRadius.circular(45.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 0, horizontal: 100.0),
                  child: const Text('Login'),
                ),
                SizedBox(
                  height: 12,
                ),
                const Text(
                  'Forgot password',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black),
                ),
                const SizedBox(height: 100),
                const Text(
                  'Sign up here',
                  style: TextStyle(
                      fontSize: 12, color: CupertinoColors.systemBlue),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
