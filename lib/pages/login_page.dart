import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Image.asset('images/learn_hero.png'),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'TextFormField Intro',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Name'),
                      border: OutlineInputBorder(),
                      hintText: 'Enter Name',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Password'),
                      hintText: 'Enter Password',
                    ),
                    obscureText: true,
                    obscuringCharacter: '*',
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Mobile No: '),
                      prefixText: '+91',
                      hintText: '1234567890',
                      border: OutlineInputBorder(),
                    ),
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Email'),
                      hintText: 'abcdefghij',
                      suffix: Text('@gmail.com'),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.home);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
