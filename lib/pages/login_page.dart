import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                      label: Text('Name: '),
                      border: OutlineInputBorder(),
                      hintText: 'Enter Name',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter name';
                      }
                      return null;
                    },
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
                      label: Text('Password: '),
                      hintText: 'Enter Password',
                    ),
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      } else if (value.length < 6) {
                        return 'Password shoud be greater than 6 digits';
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter mobile no';
                      }
                      return null;
                    },
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
                      label: Text('Email: '),
                      hintText: 'mail-id',
                      suffix: Text('@gmail.com'),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email id';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, MyRoutes.home);
                    }
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
